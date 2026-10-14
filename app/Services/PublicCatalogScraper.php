<?php

namespace App\Services;

use DOMDocument;
use DOMXPath;
use Illuminate\Http\Client\Pool;
use Illuminate\Http\Client\Response;
use Illuminate\Support\Facades\Http;

class PublicCatalogScraper
{
    public function __construct(private ChromePage $chrome) {}

    /**
     * @param  callable(array<string, mixed>): void  $save
     */
    public function scrape(string $url, callable $save, int $limit = 0): int
    {
        $saved = 0;
        $page = 1;
        $seen = [];
        $cookie = $this->chrome->cookieHeader();

        while ($page <= 40) {
            $html = $this->document($this->pageUrl($url, $page), $cookie);

            if ($page === 1 && $this->blocked($html)) {
                throw new \RuntimeException('Human Verification. This category was stopped so it does not keep waiting.');
            }

            $fresh = [];

            foreach ($this->cards($html) as $card) {
                if (isset($seen[$card['product_link']])) {
                    continue;
                }

                $seen[$card['product_link']] = true;
                $fresh[] = $card;
            }

            if ($fresh === []) {
                break;
            }

            foreach (array_chunk($fresh, 8) as $chunk) {
                if ($limit > 0 && $saved >= $limit) {
                    return $saved;
                }

                $details = $this->documents(array_column($chunk, 'product_link'), $cookie);

                foreach ($chunk as $index => $card) {
                    if ($limit > 0 && $saved >= $limit) {
                        return $saved;
                    }

                    $save($this->merge($card, $details[$index] ?? '', $url));
                    $saved++;
                }
            }

            $page++;
        }

        return $saved;
    }

    private function document(string $url, string &$cookie): string
    {
        $batch = $this->documents([$url], $cookie);

        return $batch[0];
    }

    /**
     * @param  list<string>  $urls
     * @return array<int, string>
     */
    private function documents(array $urls, string &$cookie): array
    {
        $documents = [];
        $retry = [];

        foreach (array_chunk($urls, 8, true) as $chunk) {
            $responses = Http::pool(function (Pool $pool) use ($chunk, $cookie) {
                $requests = [];

                foreach ($chunk as $key => $url) {
                    $requests[] = $pool->as((string) $key)
                        ->connectTimeout(5)
                        ->timeout(8)
                        ->withHeaders($this->headers($cookie))
                        ->get($url);
                }

                return $requests;
            });

            foreach ($chunk as $key => $url) {
                $response = $responses[(string) $key] ?? null;
                $body = $response instanceof Response ? $response->body() : '';

                if ($response instanceof Response && $response->successful() && ! $this->blocked($body)) {
                    $documents[$key] = $body;

                    continue;
                }

                $retry[$key] = $url;
            }
        }

        if ($retry !== []) {
            foreach ($this->chrome->renderMany($retry) as $key => $body) {
                $documents[$key] = $this->blocked($body) ? '' : $body;
            }
        }

        $opened = array_filter($documents, fn (string $html): bool => ! $this->blocked($html));

        if ($opened === []) {
            throw new \RuntimeException('Human Verification. This category was stopped so it does not keep waiting.');
        }

        return $documents;
    }

    /**
     * @return array<string, string>
     */
    private function headers(string $cookie): array
    {
        return [
            'User-Agent' => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36',
            'Accept' => 'text/html',
            'Cookie' => $cookie,
        ];
    }

    private function verification(string $html): bool
    {
        return str_contains($html, 'Human Verification')
            || str_contains($html, 'awsWafCookieDomainList')
            || str_contains($html, '<title>403 Forbidden</title>');
    }

    private function blocked(string $html): bool
    {
        return $this->verification($html) || strlen($html) < 1000;
    }

    private function pageUrl(string $url, int $page): string
    {
        $parts = parse_url($url);
        $query = [];
        parse_str($parts['query'] ?? '', $query);
        $query['limit'] = 90;

        if ($page > 1) {
            $query['p'] = $page;
        } else {
            unset($query['p']);
        }

        $base = ($parts['scheme'] ?? 'https').'://'.($parts['host'] ?? '').($parts['path'] ?? '');

        return $base.'?'.http_build_query($query);
    }

    /**
     * @return list<array{product_title: string, product_link: string, image: ?string, org_price: ?float, sku: string}>
     */
    private function cards(string $html): array
    {
        $xpath = $this->xpath($html);
        $cards = [];

        foreach ($xpath->query('//li[contains(@class,"grid_3")]') ?: [] as $item) {
            $link = $xpath->query('.//a[contains(@class,"product-image")]', $item)->item(0);
            $name = $xpath->query('.//h2[contains(@class,"product-name")]', $item)->item(0);
            $sku = $xpath->query('.//p[contains(@class,"product-grid-sku")]', $item)->item(0);
            $image = $xpath->query('.//img', $item)->item(0);
            $href = $link?->attributes?->getNamedItem('href')?->nodeValue;
            $src = $image?->attributes?->getNamedItem('data-src')?->nodeValue
                ?: $image?->attributes?->getNamedItem('src')?->nodeValue;

            if (! is_string($href) || $href === '') {
                continue;
            }

            $title = trim($name?->textContent ?? '');
            $skuText = trim(preg_replace('/\s+/', ' ', $sku?->textContent ?? '') ?? '');
            $priceText = trim(preg_replace('/\s+/', ' ', $item->textContent ?? '') ?? '');

            $cards[] = [
                'product_title' => trim($title.($skuText !== '' ? ' '.$skuText : '')),
                'product_link' => $href,
                'image' => $src,
                'org_price' => $this->money($priceText),
                'sku' => $skuText,
            ];
        }

        return $cards;
    }

    /**
     * @param  array{product_title: string, product_link: string, image: ?string, org_price: ?float, sku: string}  $card
     * @return array<string, mixed>
     */
    private function merge(array $card, string $html, string $categoryUrl): array
    {
        $xpath = $this->xpath($html);
        $description = trim(preg_replace('/\s+/', ' ', $xpath->query('//div[contains(@class,"short-description")]')?->item(0)?->textContent ?? '') ?? '');
        $description = preg_replace('/^Details:\s*/', '', $description) ?? $description;
        $points = [];

        foreach ($xpath->query('//div[contains(@class,"extra-details")]//li') ?: [] as $point) {
            $text = trim(preg_replace('/\s+/', ' ', $point->textContent ?? '') ?? '');

            if ($text !== '') {
                $points[] = $text;
            }
        }

        if ($points !== []) {
            $description = trim($description."\n".implode("\n", array_map(fn (string $point) => '• '.$point, $points)));
        }

        $policy = trim(preg_replace('/\s+/', ' ', $xpath->query('//span[contains(@class,"msrp_price_simple")]')?->item(0)?->textContent ?? '') ?? '');
        $images = [];

        if (is_string($card['image']) && $card['image'] !== '') {
            $images[] = $this->originalImage($card['image']);
        }

        foreach ($xpath->query('//div[contains(@class,"product-img-box")]//img|//div[contains(@class,"more-views")]//a') ?: [] as $node) {
            $href = $node->attributes?->getNamedItem('href')?->nodeValue
                ?: $node->attributes?->getNamedItem('data-src')?->nodeValue
                ?: $node->attributes?->getNamedItem('src')?->nodeValue;

            if (is_string($href) && str_contains($href, '/catalog/product/')) {
                $images[] = $this->originalImage($href);
            }
        }

        [$category, $subCategory] = $this->categories($categoryUrl);
        preg_match('/(\d+)\.html$/', $card['product_link'], $id);

        return [
            'external_id' => 'foa-'.($id[1] ?? md5($card['product_link'])),
            'category' => $category,
            'sub_category' => $subCategory,
            'product_title' => $card['product_title'],
            'product_link' => $card['product_link'],
            'image_urls' => array_slice(array_values(array_unique($images)), 0, 5),
            'description' => $description !== '' ? $description : null,
            'org_price' => $card['org_price'],
            'discounted_price' => null,
            'policy' => $policy !== '' ? $policy : null,
        ];
    }

    private function pageCount(string $html, int $perPage): int
    {
        $pages = 1;

        if (preg_match_all('/[?&]p=(\d+)/', $html, $matches)) {
            $pages = max($pages, ...array_map('intval', $matches[1]));
        }

        if ($perPage > 0 && preg_match('/Showing\s+[0-9,]+\s+of\s+([0-9,]+)/i', $html, $total)) {
            $count = (int) str_replace(',', '', $total[1]);
            $pages = max($pages, (int) ceil($count / $perPage));
        }

        return $pages;
    }

    /**
     * @return array{0: string, 1: ?string}
     */
    private function categories(string $url): array
    {
        $path = (string) parse_url($url, PHP_URL_PATH);
        $names = [];

        foreach (array_filter(explode('/', trim($path, '/'))) as $part) {
            if ($part === 'categories') {
                continue;
            }

            $names[] = ucwords(str_replace(['-', '_'], ' ', preg_replace('/\.html$/', '', $part) ?? $part));
        }

        return [$names[0] ?? 'Catalog', $names[1] ?? ($names[0] ?? null)];
    }

    private function money(string $text): ?float
    {
        if (! preg_match('/\$([0-9,]+\.\d{2})/', $text, $match)) {
            return null;
        }

        return (float) str_replace(',', '', $match[1]);
    }

    private function originalImage(string $url): string
    {
        $parts = parse_url($url);
        $host = $parts['host'] ?? '';

        if ($host !== '' && preg_match('#/catalog/product/(?:cache/[^/]+/[^/]+/[^/]+/[a-f0-9]+/)?(.+)$#i', $parts['path'] ?? '', $match)) {
            return ($parts['scheme'] ?? 'https').'://'.$host.'/media/catalog/product/'.$match[1];
        }

        return $url;
    }

    private function xpath(string $html): DOMXPath
    {
        $document = new DOMDocument;
        $previous = libxml_use_internal_errors(true);
        $document->loadHTML($html !== '' ? $html : '<html></html>');
        libxml_clear_errors();
        libxml_use_internal_errors($previous);

        return new DOMXPath($document);
    }
}
