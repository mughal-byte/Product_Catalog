<?php

namespace App\Console\Commands;

use App\Models\AccountNotice;
use App\Models\Product;
use App\Models\ScrapeRun;
use App\Services\ChromePage;
use App\Services\PublicCatalogScraper;
use Illuminate\Console\Command;
use Illuminate\Http\Client\Pool;
use Illuminate\Http\Client\Response;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Str;
use Throwable;

class ScrapeDealerProducts extends Command
{
    protected $signature = 'products:scrape {url=https://www.nydiamondusa.com : Site link} {--prompt= : What to scrape} {--run= : Scrape run id} {--limit=0 : Stop after this many products}';

    protected $description = 'Scrape a store catalog from a site link and prompt';

    private const STORE_APP_ID = '215238eb-22a5-4c36-9e7b-e7c08025e04e';

    private string $site = 'https://www.nydiamondusa.com';

    /** @var array<string, string> */
    private array $onlyCollections = [];

    private int $savedCount = 0;

    private int $createdCount = 0;

    private int $updatedCount = 0;

    public function handle(): int
    {
        $this->site = $this->normalizeSite((string) $this->argument('url'));
        $prompt = trim((string) $this->option('prompt'));
        $runId = $this->option('run') !== null ? (int) $this->option('run') : null;
        $limit = (int) $this->option('limit');

        try {
            if ($this->isAmazon()) {
                return $this->scrapeAmazon($runId, $limit);
            }

            if ($this->isAliExpress()) {
                return $this->scrapeAliExpress($runId, $limit);
            }

            $instance = $this->storeInstance();

            if ($instance === null) {
                return $this->scrapePublicCatalog($prompt, $runId, $limit);
            }

            $collections = $this->collections($instance);
            $this->onlyCollections = $this->collectionsNamedInPrompt($collections, $prompt);
            $scope = $this->onlyCollections === []
                ? 'all categories'
                : implode(', ', array_unique($this->onlyCollections));
            $this->info('Site: '.$this->site);
            $this->info('Scope: '.$scope);
            $this->touchRun($runId, 'running', 0, 'Checking '.$scope.'.');

            $saved = 0;
            $offset = 0;
            $total = 0;

            do {
                $page = $this->products($instance, $offset);
                $batch = $page['products'];
                $total = $page['total'];

                foreach ($batch as $product) {
                    if (($product['visible'] ?? true) !== true || ! $this->matchesPrompt($product)) {
                        continue;
                    }

                    $this->saveProduct($product, $collections);
                    $saved++;
                    $this->savedCount = $saved;
                    $this->line(sprintf('[%d] %s', $saved, $product['name'] ?? $product['id']));
                    $this->touchRun($runId, 'running', $saved, "Checked {$saved} products from {$scope}.");
                }

                $offset += count($batch);
            } while ($batch !== [] && $offset < $total);

            $this->finishRun($runId, 'completed', $saved, $this->scrapeSummary($scope));
            $this->info("Saved {$saved} products.");

            return self::SUCCESS;
        } catch (Throwable $exception) {
            $this->finishRun($runId, 'failed', $this->savedCount, $this->plainError($exception->getMessage()));
            $this->error($this->plainError($exception->getMessage()));

            return self::FAILURE;
        }
    }

    private function storeInstance(): ?string
    {
        $origin = (string) parse_url($this->site, PHP_URL_SCHEME).'://'.parse_url($this->site, PHP_URL_HOST);

        try {
            $response = Http::timeout(8)
                ->withHeaders([
                    'User-Agent' => 'Mozilla/5.0',
                    'Accept' => 'application/json',
                ])
                ->get($origin.'/_api/v1/access-tokens');
        } catch (Throwable) {
            return null;
        }

        if (! $response->successful()) {
            return null;
        }

        $instance = $response->json('apps.'.self::STORE_APP_ID.'.instance');

        if (! is_string($instance) || $instance === '') {
            return null;
        }

        $this->site = $origin;

        return $instance;
    }

    private function scrapePublicCatalog(string $prompt, ?int $runId, int $limit): int
    {
        $this->touchRun($runId, 'running', 0, 'Opening the category page.');

        $saved = app(PublicCatalogScraper::class)->scrape($this->site, function (array $product) use ($runId): void {
            $this->savePublicProduct($product);
            $this->savedCount++;
            $this->line(sprintf('[%d] %s', $this->savedCount, $product['product_title']));
            $this->touchRun($runId, 'running', $this->savedCount, "Saved {$this->savedCount} products.");
        }, $limit);

        $this->finishRun($runId, 'completed', $saved, "Saved {$saved} products with images, title, description, price, category, link, and policy.");
        $this->info("Saved {$saved} products.");

        return self::SUCCESS;
    }

    /**
     * @param  array<string, mixed>  $product
     */
    private function savePublicProduct(array $product): void
    {
        $slug = Str::slug((string) $product['external_id'].'-'.$product['product_title']) ?: (string) $product['external_id'];
        $categoryFolder = Product::categoryFolder($product['sub_category'] ?: $product['category']);
        $images = $this->downloadRemoteImages($categoryFolder, $slug, $product['image_urls'] ?? []);

        $this->rememberSave(Product::forCategory($this->siteHost(), $product['sub_category'] ?: $product['category'])->updateOrCreate(
            ['external_id' => $product['external_id'], 'user_id' => $this->ownerId()],
            [
                'user_id' => $this->ownerId(),
                'site_host' => $this->siteHost(),
                'site_name' => $this->siteHost(),
                'category' => $product['category'],
                'sub_category' => $product['sub_category'],
                'product_title' => $product['product_title'],
                'product_link' => $product['product_link'],
                'image1' => $images[1] ?? null,
                'image2' => $images[2] ?? null,
                'image3' => $images[3] ?? null,
                'image4' => $images[4] ?? null,
                'image5' => $images[5] ?? null,
                'description' => $product['description'],
                'org_price' => $product['org_price'],
                'discounted_price' => $product['discounted_price'],
                'policy' => $product['policy'],
            ],
        ));
    }

    /**
     * @param  list<string>  $urls
     * @return array<int, string>
     */
    private function downloadRemoteImages(string $category, string $folder, array $urls): array
    {
        $saved = [];
        $jobs = [];

        foreach ($urls as $url) {
            if (count($saved) + count($jobs) >= 5 || ! is_string($url) || $url === '') {
                continue;
            }

            $extension = strtolower(pathinfo((string) parse_url($url, PHP_URL_PATH), PATHINFO_EXTENSION) ?: 'jpg');
            $extension = preg_replace('/[^a-z0-9]/', '', $extension) ?: 'jpg';
            $index = count($saved) + count($jobs) + 1;
            $relative = $this->imageRoot().'/'.$category.'/'.$folder.'/'.$index.'.'.$extension;
            $absolute = public_path($relative);

            if (is_file($absolute) && filesize($absolute) > 500) {
                $saved[$index] = $relative;

                continue;
            }

            $jobs[$index] = [$url, $absolute, $relative];
        }

        if ($jobs === []) {
            return $saved;
        }

        $responses = Http::pool(function (Pool $pool) use ($jobs) {
            $requests = [];

            foreach ($jobs as $index => [$url]) {
                $requests[] = $pool->as((string) $index)
                    ->timeout(40)
                    ->withHeaders(['User-Agent' => 'Mozilla/5.0', 'Referer' => $this->site])
                    ->get($url);
            }

            return $requests;
        });

        foreach ($jobs as $index => [, $absolute, $relative]) {
            $response = $responses[(string) $index] ?? null;

            if (! $response instanceof Response || ! $response->successful() || strlen($response->body()) < 500) {
                continue;
            }

            File::ensureDirectoryExists(dirname($absolute));
            File::put($absolute, $response->body());
            $saved[$index] = $relative;
        }

        return $saved;
    }

    private function plainError(string $message): string
    {
        if (str_contains($message, 'Human Verification') || str_contains($message, 'awsWafCookieDomainList')) {
            return 'Human Verification. This category was stopped so it does not keep waiting.';
        }

        if (str_contains($message, '<html') || str_contains($message, '403')) {
            return 'The category page did not open. This scrape was stopped so it does not keep waiting.';
        }

        return strlen($message) > 400 ? substr($message, 0, 400) : $message;
    }

    /**
     * @return array<string, string>
     */
    private function collections(string $instance): array
    {
        $response = $this->catalog($instance, '/v1/collections/query', [
            'query' => ['paging' => ['limit' => 100, 'offset' => 0]],
        ]);

        $map = [];

        foreach ($response['collections'] ?? [] as $collection) {
            $name = trim((string) ($collection['name'] ?? ''));

            if ($name === '' || strcasecmp($name, 'All Products') === 0) {
                continue;
            }

            $map[$collection['id']] = $name;
        }

        return $map;
    }

    /**
     * @return array{products: list<array<string, mixed>>, total: int}
     */
    private function products(string $instance, int $offset): array
    {
        $response = $this->catalog($instance, '/v1/products/query', [
            'includeVariants' => false,
            'query' => ['paging' => ['limit' => 100, 'offset' => $offset]],
        ]);

        return [
            'products' => $response['products'] ?? [],
            'total' => (int) ($response['totalResults'] ?? 0),
        ];
    }

    /**
     * @param  array<string, mixed>  $body
     * @return array<string, mixed>
     */
    private function catalog(string $instance, string $path, array $body): array
    {
        $response = Http::timeout(60)
            ->retry(3, 500)
            ->withHeaders([
                'Authorization' => $instance,
                'Origin' => $this->site,
            ])
            ->acceptJson()
            ->post($this->site.'/_api/catalog-reader-server'.$path, $body);

        $response->throw();

        return $response->json() ?? [];
    }

    /**
     * @param  array<string, mixed>  $product
     * @param  array<string, string>  $collections
     */
    private function saveProduct(array $product, array $collections): void
    {
        $slug = $this->folderName((string) ($product['slug'] ?? ''), (string) ($product['name'] ?? 'product'));
        $names = [];

        foreach ($product['collectionIds'] ?? [] as $collectionId) {
            if (isset($collections[$collectionId])) {
                $names[] = $collections[$collectionId];
            }
        }

        $price = $product['price'] ?? [];
        $categoryFolder = Product::categoryFolder($names[0] ?? null);
        $images = $this->downloadImages($categoryFolder, $slug, $product['media']['items'] ?? []);
        $link = rtrim((string) ($product['productPageUrl']['base'] ?? $this->site.'/'), '/').'/'.ltrim((string) ($product['productPageUrl']['path'] ?? '/product-page/'.$slug), '/');

        $this->rememberSave(Product::forCategory($this->siteHost(), $names[0] ?? null)->updateOrCreate(
            ['external_id' => $product['id'], 'user_id' => $this->ownerId()],
            [
                'user_id' => $this->ownerId(),
                'site_host' => $this->siteHost(),
                'site_name' => $this->siteHost(),
                'category' => 'Dealer Products',
                'sub_category' => $names === [] ? null : implode(' | ', array_values(array_unique($names))),
                'product_title' => (string) ($product['name'] ?? $slug),
                'product_link' => $link,
                'image1' => $images[1] ?? null,
                'image2' => $images[2] ?? null,
                'image3' => $images[3] ?? null,
                'image4' => $images[4] ?? null,
                'image5' => $images[5] ?? null,
                'description' => $this->plain((string) ($product['description'] ?? '')),
                'org_price' => $price['price'] ?? null,
                'discounted_price' => $price['discountedPrice'] ?? null,
                'policy' => $this->policy($product['additionalInfoSections'] ?? []),
            ],
        ));
    }

    /**
     * @param  list<array<string, mixed>>  $items
     * @return array<int, string>
     */
    private function downloadImages(string $category, string $folder, array $items): array
    {
        $directory = public_path($this->imageRoot().'/'.$category.'/'.$folder);
        File::ensureDirectoryExists($directory);

        $saved = [];
        $index = 0;

        foreach ($items as $item) {
            if (($item['mediaType'] ?? 'image') !== 'image') {
                continue;
            }

            $index++;

            if ($index > 5) {
                break;
            }

            $mediaId = (string) ($item['id'] ?? '');
            $extension = strtolower(pathinfo($mediaId, PATHINFO_EXTENSION) ?: 'jpg');
            $extension = preg_replace('/[^a-z0-9]/', '', $extension) ?: 'jpg';
            $relative = $this->imageRoot().'/'.$category.'/'.$folder.'/'.$index.'.'.$extension;
            $absolute = public_path($relative);

            if (is_file($absolute) && filesize($absolute) > 500) {
                $saved[$index] = $relative;

                continue;
            }

            $url = $item['image']['url'] ?? ($mediaId !== '' ? 'https://static.wixstatic.com/media/'.$mediaId : null);

            if (! is_string($url) || $url === '') {
                continue;
            }

            try {
                $response = Http::timeout(40)
                    ->retry(2, 300)
                    ->withHeaders([
                        'User-Agent' => 'Mozilla/5.0',
                        'Referer' => $this->site.'/',
                    ])
                    ->get($url);

                if (! $response->successful() || strlen($response->body()) < 500) {
                    $this->warn("Image skipped for {$folder} #{$index}");

                    continue;
                }

                File::put($absolute, $response->body());
                $saved[$index] = $relative;
            } catch (Throwable $exception) {
                $this->warn("Image failed for {$folder} #{$index}: {$exception->getMessage()}");
            }
        }

        return $saved;
    }

    /**
     * @param  list<array<string, mixed>>  $sections
     */
    private function policy(array $sections): ?string
    {
        foreach ($sections as $section) {
            $title = (string) ($section['title'] ?? '');

            if (stripos($title, 'policy') === false) {
                continue;
            }

            $text = $this->plain((string) ($section['description'] ?? ''));

            if ($text !== '') {
                return $text;
            }
        }

        return null;
    }

    private function plain(string $html): ?string
    {
        $html = preg_replace('/<\s*br\s*\/?>/i', "\n", $html) ?? $html;
        $html = preg_replace('/<\/(p|li|div|h[1-6]|tr)>/i', "\n", $html) ?? $html;
        $html = preg_replace('/<li[^>]*>/i', '• ', $html) ?? $html;
        $text = html_entity_decode(strip_tags($html), ENT_QUOTES | ENT_HTML5, 'UTF-8');
        $text = preg_replace("/[ \t]+\n/", "\n", $text) ?? $text;
        $text = preg_replace("/[ \t]{2,}/", ' ', $text) ?? $text;
        $text = preg_replace("/\n{3,}/", "\n\n", $text) ?? $text;
        $text = trim($text);

        return $text === '' ? null : $text;
    }

    private function folderName(string $slug, string $name): string
    {
        $slug = strtolower(trim($slug));

        if ($slug !== '' && preg_match('/^[a-z0-9\-]+$/', $slug) === 1) {
            return $slug;
        }

        return Str::slug($name !== '' ? $name : 'product') ?: 'product';
    }

    private function normalizeSite(string $url): string
    {
        return Product::normalizeSiteUrl($url);
    }

    private function isAmazon(): bool
    {
        return str_contains($this->siteHost(), 'amazon.');
    }

    private function isAliExpress(): bool
    {
        return str_contains($this->siteHost(), 'aliexpress.');
    }

    private function scrapeAliExpress(?int $runId, int $limit): int
    {
        $this->touchRun($runId, 'running', 0, 'Opening the AliExpress page.');
        $html = $this->amazonDocument($this->site);
        $products = $this->aliProductsFromHtml($html);

        if ($products === []) {
            $listing = $this->aliListingUrl($this->site);

            if ($listing !== null) {
                $this->touchRun($runId, 'running', 0, 'Opening the products on this AliExpress link.');
                $products = $this->aliProductsFromHtml($this->amazonDocument($listing));
            }
        }

        if ($products === []) {
            $single = $this->aliItemPage($html);

            if ($single !== null) {
                $products[$single['external_id']] = $single;
            }
        }

        if ($products === []) {
            throw new \RuntimeException('This AliExpress page did not include products.');
        }

        $categoryName = $this->aliCategoryName();
        $saved = 0;

        foreach ($products as $product) {
            if ($limit > 0 && $saved >= $limit) {
                break;
            }

            $product['category'] = 'AliExpress';
            $product['sub_category'] = $categoryName;
            $this->savePublicProduct($product);
            $saved++;
            $this->savedCount = $saved;
            $this->line(sprintf('[%d] %s', $saved, $product['product_title']));
            $this->touchRun($runId, 'running', $saved, "Saved {$saved} products.");
        }

        $this->finishRun($runId, 'completed', $saved, "Saved {$saved} products in the aliexpress.com catalog.");
        $this->info("Saved {$saved} products.");

        return self::SUCCESS;
    }

    /**
     * @return array<string, array<string, mixed>>
     */
    private function aliProductsFromHtml(string $html): array
    {
        $products = [];

        foreach (array_merge($this->aliItems($html), $this->aliCardItems($html)) as $item) {
            $product = $this->aliProduct($item, $this->aliCategoryName());

            if ($product !== null) {
                $products[$product['external_id']] = $product;
            }
        }

        return $products;
    }

    private function aliListingUrl(string $url): ?string
    {
        $path = (string) parse_url($url, PHP_URL_PATH);

        if (preg_match('#/(?:w/)?wholesale(?:-|$)#', $path) === 1 || preg_match('#/item/\d+\.html$#', $path) === 1) {
            return null;
        }

        $query = [];
        parse_str((string) parse_url($url, PHP_URL_QUERY), $query);
        $term = trim(urldecode(urldecode((string) ($query['categoryTab'] ?? $query['SearchText'] ?? $query['q'] ?? $query['disp_q'] ?? ''))));

        if ($term === '') {
            return null;
        }

        $slug = strtolower(str_replace(['_', ',', '&', '/'], ' ', $term));
        $slug = trim((string) preg_replace('/[^a-z0-9]+/', '-', $slug), '-');

        return $slug === '' ? null : 'https://www.aliexpress.com/w/wholesale-'.$slug.'.html';
    }

    /**
     * @return list<array<string, mixed>>
     */
    private function aliItems(string $html): array
    {
        $marker = '"itemList":';
        $pos = strpos($html, $marker);

        if ($pos === false) {
            return [];
        }

        $decoded = $this->jsonObjectAt($html, $pos + strlen($marker));
        $content = $decoded['content'] ?? null;

        return is_array($content) ? array_values(array_filter($content, 'is_array')) : [];
    }

    /**
     * Home, campaign, and other AliExpress pages embed product cards outside itemList.
     *
     * @return list<array<string, mixed>>
     */
    private function aliCardItems(string $html): array
    {
        $items = [];
        $offset = 0;

        while (($pos = strpos($html, '"productTitle":', $offset)) !== false) {
            $object = $this->jsonObjectContaining($html, $pos, 'productTitle');
            $offset = $pos + strlen('"productTitle":');

            if ($object === null) {
                continue;
            }

            $item = $this->aliCardItem($object);

            if ($item !== null) {
                $items[$item['productId']] = $item;
            }
        }

        return array_values($items);
    }

    /**
     * @param  array<string, mixed>  $object
     * @return array<string, mixed>|null
     */
    private function aliCardItem(array $object): ?array
    {
        $title = trim((string) ($object['productTitle'] ?? ''));
        $id = $object['productId'] ?? $object['id'] ?? null;

        if (! is_scalar($id) || preg_match('/^\d+$/', (string) $id) !== 1) {
            $link = (string) (($object['productDetailUrl'] ?? '').($object['linkUrl'] ?? ''));
            $id = preg_match('/(?:item\/|productIds=)(\d+)/', $link, $match) === 1 ? $match[1] : null;
        }

        if ($title === '' || $id === null) {
            return null;
        }

        $image = $object['productImage'] ?? $object['imageUrl'] ?? null;

        if (! is_string($image) && is_array($object['image'] ?? null)) {
            $image = $object['image']['imgUrl'] ?? null;
        }

        $original = $this->aliAmount(is_string($object['localizedOriMinPriceInfo'] ?? null) ? $object['localizedOriMinPriceInfo'] : null)
            ?? $this->aliAmount(is_string($object['oriMinPrice'] ?? null) ? $object['oriMinPrice'] : null);
        $sale = $this->aliAmount(is_string($object['localizedMinPriceInfo'] ?? null) ? $object['localizedMinPriceInfo'] : null)
            ?? $this->aliAmount(is_string($object['minPrice'] ?? null) ? $object['minPrice'] : null);
        $sold = trim((string) ($object['tradeCount'] ?? ''));

        if ($sold !== '' && ! str_contains(strtolower($sold), 'sold')) {
            $sold .= ' sold';
        }

        return [
            'productId' => (string) $id,
            'title' => ['displayTitle' => $title],
            'images' => is_string($image) && $image !== '' ? [['imgUrl' => $image]] : [],
            'prices' => [
                'originalPrice' => ['minPrice' => $original],
                'salePrice' => ['minPrice' => $sale],
            ],
            'trade' => ['tradeDesc' => $sold],
        ];
    }

    private function aliAmount(?string $text): ?float
    {
        if ($text === null || $text === '') {
            return null;
        }

        if (preg_match('/\|([0-9]+(?:\.[0-9]+)?)\|/', $text, $match) === 1) {
            return (float) $match[1];
        }

        return $this->amount($text);
    }

    /**
     * @return array<string, mixed>|null
     */
    private function jsonObjectContaining(string $html, int $keyPos, string $key): ?array
    {
        $windowStart = max(0, $keyPos - 5000);
        $cursor = $keyPos - $windowStart;

        for ($try = 0; $try < 12; $try++) {
            $cursor = strrpos(substr($html, $windowStart, $cursor), '{');

            if ($cursor === false) {
                return null;
            }

            $object = $this->jsonObjectAt($html, $windowStart + $cursor);

            if (is_array($object) && array_key_exists($key, $object)) {
                return $object;
            }
        }

        return null;
    }

    /**
     * @return array<string, mixed>|null
     */
    private function aliItemPage(string $html): ?array
    {
        if (preg_match('#/item/(\d+)\.html#', $this->site, $id) !== 1) {
            return null;
        }

        if (preg_match('/property="og:title" content="([^"]+)"/', $html, $title) !== 1) {
            return null;
        }

        $name = trim(html_entity_decode($title[1], ENT_QUOTES | ENT_HTML5, 'UTF-8'));
        $name = trim((string) preg_replace('/\s*-\s*AliExpress\b.*$/i', '', $name));

        if ($name === '') {
            return null;
        }

        $images = [];

        if (preg_match('/imagePathList":(\[[^\]]+\])/', $html, $list) === 1) {
            $decoded = json_decode($list[1], true);
            $images = is_array($decoded) ? $decoded : [];
        }

        if ($images === [] && preg_match('/property="og:image" content="([^"]+)"/', $html, $image) === 1) {
            $images = [$image[1]];
        }

        return [
            'external_id' => 'ali-'.$id[1],
            'category' => 'AliExpress',
            'sub_category' => $this->aliCategoryName(),
            'product_title' => $name,
            'product_link' => 'https://www.aliexpress.com/item/'.$id[1].'.html',
            'image_urls' => array_slice(array_values(array_filter($images, 'is_string')), 0, 5),
            'description' => $name,
            'org_price' => null,
            'discounted_price' => null,
            'policy' => null,
        ];
    }

    /**
     * @return array<string, mixed>|null
     */
    private function jsonObjectAt(string $html, int $start): ?array
    {
        $length = strlen($html);
        $depth = 0;
        $inString = false;
        $escape = false;

        for ($i = $start; $i < $length; $i++) {
            $character = $html[$i];

            if ($inString) {
                if ($escape) {
                    $escape = false;

                    continue;
                }

                if ($character === '\\') {
                    $escape = true;

                    continue;
                }

                if ($character === '"') {
                    $inString = false;
                }

                continue;
            }

            if ($character === '"') {
                $inString = true;

                continue;
            }

            if ($character === '{') {
                $depth++;
            } elseif ($character === '}') {
                $depth--;

                if ($depth === 0) {
                    $decoded = json_decode(substr($html, $start, $i - $start + 1), true);

                    return is_array($decoded) ? $decoded : null;
                }
            }
        }

        return null;
    }

    private function aliCategoryName(): string
    {
        $query = [];
        parse_str((string) parse_url($this->site, PHP_URL_QUERY), $query);
        $name = (string) ($query['disp_q'] ?? $query['q'] ?? $query['SearchText'] ?? $query['categoryTab'] ?? '');
        $path = (string) parse_url($this->site, PHP_URL_PATH);

        if ($name === '' && preg_match('#/wholesale-([^/]+)\.html$#', $path, $match) === 1) {
            $name = $match[1];
        }

        if ($name === '' && ($path === '' || $path === '/')) {
            return 'Home';
        }

        if ($name === '' && preg_match('#/item/\d+\.html$#', $path) === 1) {
            return 'Item';
        }

        $name = trim(html_entity_decode(urldecode(urldecode($name))));
        $name = trim((string) preg_replace('/\s+/', ' ', str_replace('_', ' ', $name)));
        $name = ucwords($name);

        return $name !== '' ? $name : 'AliExpress';
    }

    /**
     * @param  array<string, mixed>  $item
     * @return array<string, mixed>|null
     */
    private function aliProduct(array $item, string $categoryName): ?array
    {
        $id = (string) ($item['productId'] ?? '');
        $title = trim((string) ($item['title']['displayTitle'] ?? ''));

        if ($id === '' || $title === '') {
            return null;
        }

        $images = [];

        foreach ($item['images'] ?? [] as $image) {
            $url = (string) ($image['imgUrl'] ?? '');

            if (str_starts_with($url, '//')) {
                $url = 'https:'.$url;
            }

            if (str_starts_with($url, 'http')) {
                $images[] = $url;
            }
        }

        $original = $item['prices']['originalPrice']['minPrice'] ?? null;
        $sale = $item['prices']['salePrice']['minPrice'] ?? null;
        $original = is_numeric($original) ? (float) $original : null;
        $sale = is_numeric($sale) ? (float) $sale : null;
        $sold = trim((string) ($item['trade']['tradeDesc'] ?? ''));

        return [
            'external_id' => 'ali-'.$id,
            'category' => 'AliExpress',
            'sub_category' => $categoryName,
            'product_title' => $title,
            'product_link' => 'https://www.aliexpress.com/item/'.$id.'.html',
            'image_urls' => array_slice(array_values(array_unique($images)), 0, 5),
            'description' => $sold !== '' ? $title."\n".$sold : $title,
            'org_price' => $original ?? $sale,
            'discounted_price' => $original !== null && $sale !== null && $sale < $original ? $sale : null,
            'policy' => null,
        ];
    }

    private function scrapeAmazon(?int $runId, int $limit): int
    {
        $this->touchRun($runId, 'running', 0, 'Opening the Amazon page.');
        $listing = $this->amazonDocument($this->site);
        $cards = $this->amazonCards($listing);

        if ($cards === []) {
            throw new \RuntimeException('The Amazon page did not include products. Open the category link again from the Scrape page.');
        }

        $saved = 0;

        foreach (array_chunk($cards, 6) as $chunk) {
            $pages = $this->amazonDocuments(array_column($chunk, 'product_link'));

            foreach ($chunk as $index => $card) {
                if ($limit > 0 && $saved >= $limit) {
                    break 2;
                }

                $this->savePublicProduct($this->amazonProduct($card, $pages[$index] ?? ''));
                $saved++;
                $this->savedCount = $saved;
                $this->line(sprintf('[%d] %s', $saved, $card['product_title']));
                $this->touchRun($runId, 'running', $saved, "Saved {$saved} products.");
            }
        }

        $this->finishRun($runId, 'completed', $saved, "Saved {$saved} products in the amazon.com catalog.");
        $this->info("Saved {$saved} products.");

        return self::SUCCESS;
    }

    private function amazonDocument(string $url): string
    {
        $response = Http::timeout(25)
            ->withHeaders($this->amazonHeaders())
            ->get($url);

        if (! $response->successful()) {
            throw new \RuntimeException('The Amazon page did not open.');
        }

        return $response->body();
    }

    /**
     * @param  list<string>  $urls
     * @return list<string>
     */
    private function amazonDocuments(array $urls): array
    {
        $documents = array_fill(0, count($urls), '');
        $responses = Http::pool(function (Pool $pool) use ($urls) {
            $requests = [];

            foreach ($urls as $index => $url) {
                $requests[] = $pool->as((string) $index)
                    ->timeout(25)
                    ->withHeaders($this->amazonHeaders())
                    ->get($url);
            }

            return $requests;
        });

        foreach ($urls as $index => $url) {
            $response = $responses[(string) $index] ?? null;
            $documents[$index] = $response instanceof Response && $response->successful() ? $response->body() : '';
        }

        return $documents;
    }

    /**
     * @return array<string, string>
     */
    private function amazonHeaders(): array
    {
        return [
            'User-Agent' => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36',
            'Accept' => 'text/html',
            'Accept-Language' => 'en-US,en;q=0.9',
        ];
    }

    /**
     * @return list<array{asin: string, product_title: string, product_link: string, image: ?string, org_price: ?float, discounted_price: ?float}>
     */
    private function amazonCards(string $html): array
    {
        $xpath = $this->dom($html);
        $cards = [];

        foreach ($xpath->query('//*[@data-component-type="s-search-result" and string-length(@data-asin)=10]') ?: [] as $item) {
            $asin = strtoupper((string) $item->attributes?->getNamedItem('data-asin')?->nodeValue);
            $title = trim(preg_replace('/\s+/', ' ', $xpath->query('.//h2', $item)->item(0)?->textContent ?? '') ?? '');
            $image = $xpath->query('.//img[contains(@class,"s-image")]', $item)->item(0)?->attributes?->getNamedItem('src')?->nodeValue;
            $prices = [];

            foreach ($xpath->query('.//span[contains(@class,"a-offscreen")]', $item) ?: [] as $price) {
                $amount = $this->amount($price->textContent ?? '');

                if ($amount !== null) {
                    $prices[] = $amount;
                }
            }

            if ($asin === '' || $title === '') {
                continue;
            }

            $prices = array_values(array_unique($prices));
            sort($prices);
            $cards[$asin] = [
                'asin' => $asin,
                'product_title' => $title,
                'product_link' => 'https://www.amazon.com/dp/'.$asin,
                'image' => is_string($image) ? $image : null,
                'org_price' => $prices === [] ? null : max($prices),
                'discounted_price' => count($prices) > 1 ? min($prices) : null,
            ];
        }

        return array_values($cards);
    }

    /**
     * @param  array{asin: string, product_title: string, product_link: string, image: ?string, org_price: ?float, discounted_price: ?float}  $card
     * @return array<string, mixed>
     */
    private function amazonProduct(array $card, string $html): array
    {
        $images = [];

        if (is_string($card['image']) && $card['image'] !== '') {
            $images[] = $card['image'];
        }

        $category = 'Amazon';
        $subCategory = null;
        $description = null;
        $policy = null;
        $org = $card['org_price'];
        $discount = $card['discounted_price'];
        $title = $card['product_title'];

        if ($html !== '') {
            if (preg_match_all('/"hiRes":"(https:[^"]+)"/', $html, $matches)) {
                $images = array_values(array_unique($matches[1]));
            }

            $xpath = $this->dom($html);
            $pageTitle = trim(preg_replace('/\s+/', ' ', $xpath->query('//*[@id="productTitle"]')->item(0)?->textContent ?? '') ?? '');

            if ($pageTitle !== '') {
                $title = $pageTitle;
            }

            $points = [];

            foreach ($xpath->query('//*[@id="feature-bullets"]//span[contains(@class,"a-list-item")]') ?: [] as $point) {
                $text = trim(preg_replace('/\s+/', ' ', $point->textContent ?? '') ?? '');

                if ($text !== '') {
                    $points[] = $text;
                }
            }

            if ($points !== []) {
                $description = implode("\n", array_map(fn (string $point) => '• '.$point, $points));
            }

            $crumbs = [];

            foreach ($xpath->query('//*[@id="wayfinding-breadcrumbs_feature_div"]//a') ?: [] as $crumb) {
                $text = trim(preg_replace('/\s+/', ' ', $crumb->textContent ?? '') ?? '');

                if ($text !== '') {
                    $crumbs[] = $text;
                }
            }

            if ($crumbs !== []) {
                $category = $crumbs[0];
                $subCategory = $crumbs[count($crumbs) - 1];
            }

            $current = $this->amount($xpath->query('//*[contains(@class,"priceToPay")]//span[contains(@class,"a-offscreen")]')->item(0)?->textContent ?? '');
            $list = $this->amount($xpath->query('//*[contains(@class,"basisPrice")]//span[contains(@class,"a-offscreen")]')->item(0)?->textContent ?? '');

            if ($current !== null) {
                $org = $list !== null && $list > $current ? $list : $current;
                $discount = $list !== null && $list > $current ? $current : null;
            }

            $policyText = trim(preg_replace('/\s+/', ' ', $xpath->query('//*[@id="productSupportAndReturnPolicy_feature_div"]')->item(0)?->textContent ?? '') ?? '');
            $policy = $policyText !== '' ? $policyText : null;
        }

        return [
            'external_id' => 'amazon-'.$card['asin'],
            'category' => $category,
            'sub_category' => $subCategory,
            'product_title' => $title,
            'product_link' => $card['product_link'],
            'image_urls' => array_slice(array_values(array_unique($images)), 0, 5),
            'description' => $description,
            'org_price' => $org,
            'discounted_price' => $discount,
            'policy' => $policy,
        ];
    }

    private function amount(string $text): ?float
    {
        if (! preg_match('/([0-9][0-9,]*(?:\.[0-9]{1,2})?)/', $text, $match)) {
            return null;
        }

        return (float) str_replace(',', '', $match[1]);
    }

    private function dom(string $html): \DOMXPath
    {
        $document = new \DOMDocument;
        $previous = libxml_use_internal_errors(true);
        $document->loadHTML($html !== '' ? $html : '<html></html>');
        libxml_clear_errors();
        libxml_use_internal_errors($previous);

        return new \DOMXPath($document);
    }

    private function siteHost(): string
    {
        return Product::hostFromLink($this->site) ?? 'site';
    }

    private function ownerId(): ?int
    {
        $runId = (int) ($this->option('run') ?? 0);

        if ($runId < 1) {
            return null;
        }

        $id = ScrapeRun::query()->whereKey($runId)->value('user_id');

        return $id === null ? null : (int) $id;
    }

    private function imageRoot(): string
    {
        $host = strtolower((string) parse_url($this->site, PHP_URL_HOST));
        $host = preg_replace('/^www\./', '', $host) ?? $host;

        if (str_contains($host, 'nydiamondusa') || str_contains($host, 'nydaimondusa')) {
            return 'Images/nydaimondusa';
        }

        return 'Images/'.(explode('.', $host)[0] ?: 'site');
    }

    /**
     * @param  array<string, string>  $collections
     * @return array<string, string>
     */
    private function collectionsNamedInPrompt(array $collections, string $prompt): array
    {
        if (preg_match('/Scrape more products in (.+?)\./u', $prompt, $match) === 1) {
            $wanted = array_values(array_filter(array_map(trim(...), explode('|', $match[1]))));
            $exact = [];

            foreach ($collections as $id => $name) {
                foreach ($wanted as $want) {
                    if (strcasecmp($name, $want) === 0) {
                        $exact[$id] = $name;
                    }
                }
            }

            if ($exact !== []) {
                return $exact;
            }
        }

        $prompt = mb_strtolower($prompt);
        $matched = [];

        foreach ($collections as $id => $name) {
            $lower = mb_strtolower($name);

            if ($lower !== '' && str_contains($prompt, $lower)) {
                $matched[$id] = $name;

                continue;
            }

            foreach (preg_split('/[^a-z0-9]+/i', $lower) ?: [] as $word) {
                if (strlen($word) >= 4 && str_contains($prompt, $word)) {
                    $matched[$id] = $name;
                    break;
                }
            }
        }

        return $matched;
    }

    /**
     * @param  array<string, mixed>  $product
     */
    private function matchesPrompt(array $product): bool
    {
        if ($this->onlyCollections === []) {
            return true;
        }

        foreach ($product['collectionIds'] ?? [] as $collectionId) {
            if (isset($this->onlyCollections[$collectionId])) {
                return true;
            }
        }

        return false;
    }

    private function scrapeSummary(string $scope): string
    {
        if ($this->createdCount === 0) {
            return "No new products. {$this->updatedCount} already saved in {$scope} were checked again.";
        }

        return "Added {$this->createdCount} new products in {$scope}. Updated {$this->updatedCount} already saved.";
    }

    private function touchRun(?int $runId, string $status, int $saved, string $message): void
    {
        if ($runId === null) {
            return;
        }

        ScrapeRun::query()->whereKey($runId)->update([
            'status' => $status,
            'saved_count' => $saved,
            'message' => $message,
        ]);
    }

    private function finishRun(?int $runId, string $status, int $saved, string $message): void
    {
        $this->touchRun($runId, $status, $saved, $message);
        $this->notifyOwner($runId, $status, $saved, $message);

        if ($runId !== null) {
            app(ChromePage::class)->close();
            $this->startNextQueued();
        }
    }

    private function notifyOwner(?int $runId, string $status, int $saved, string $message): void
    {
        if ($runId === null) {
            return;
        }

        $run = ScrapeRun::query()->find($runId);

        if ($run?->user_id === null) {
            return;
        }

        $created = $this->createdCount;
        $updated = $this->updatedCount;

        if ($status === 'completed' && $created === 0 && $updated === 0) {
            $created = $saved;
        }

        AccountNotice::forScrape((int) $run->user_id, $this->siteHost(), $status, $created, $updated, $message, $run->id);
    }

    private function rememberSave(Product $product): void
    {
        if ($product->wasRecentlyCreated) {
            $this->createdCount++;
        } else {
            $this->updatedCount++;
        }
    }

    private function startNextQueued(): void
    {
        if (ScrapeRun::query()->where('status', 'running')->exists()) {
            return;
        }

        $next = ScrapeRun::query()->where('status', 'queued')->latest('id')->first()
            ?? ScrapeRun::query()->where('status', 'hold')->oldest('id')->first();

        if ($next === null) {
            return;
        }

        $next->update([
            'status' => 'running',
            'message' => 'Starting scrape.',
        ]);

        $log = storage_path('logs/scrape-'.$next->id.'.log');
        $command = sprintf(
            'nohup %s %s products:scrape %s --prompt=%s --run=%d > %s 2>&1 &',
            escapeshellarg(PHP_BINARY),
            escapeshellarg(base_path('artisan')),
            escapeshellarg($next->site_url),
            escapeshellarg((string) $next->prompt),
            $next->id,
            escapeshellarg($log),
        );

        exec($command);
    }
}
