<?php

namespace Tests\Unit;

use App\Console\Commands\ScrapeDealerProducts;
use ReflectionMethod;
use ReflectionProperty;
use Tests\TestCase;

class AliExpressPageTest extends TestCase
{
    public function test_a_category_tab_link_opens_that_category_listing(): void
    {
        $command = $this->command('https://www.aliexpress.com/p/calp-plus/index.html?categoryTab=furniture');

        $this->assertSame(
            'https://www.aliexpress.com/w/wholesale-furniture.html',
            $this->invoke($command, 'aliListingUrl', [$this->site($command)]),
        );
        $this->assertSame('Furniture', $this->invoke($command, 'aliCategoryName'));
    }

    public function test_the_home_page_products_are_read_without_a_category_link(): void
    {
        $command = $this->command('https://www.aliexpress.com/');
        $html = <<<'HTML'
        <script>window.data = {"products":[{"productTitle":"Desk Lamp","productImage":"//ae-pic-a1.aliexpress-media.com/kf/lamp.jpg","productDetailUrl":"//www.aliexpress.com/item/1001.html","localizedOriMinPriceInfo":"Rs.2,000|2000|","localizedMinPriceInfo":"Rs.1,500|1500|","tradeCount":"20"}]};</script>
        HTML;

        $products = $this->invoke($command, 'aliProductsFromHtml', [$html]);

        $this->assertArrayHasKey('ali-1001', $products);
        $this->assertSame('Desk Lamp', $products['ali-1001']['product_title']);
        $this->assertSame('Home', $products['ali-1001']['sub_category']);
        $this->assertSame(2000.0, $products['ali-1001']['org_price']);
        $this->assertSame(1500.0, $products['ali-1001']['discounted_price']);
    }

    public function test_a_product_link_saves_that_one_product(): void
    {
        $command = $this->command('https://www.aliexpress.com/item/1005009649248178.html');
        $html = '<meta property="og:title" content="Shower Stool - AliExpress 1503" /><script>imagePathList":["https://ae-pic-a1.aliexpress-media.com/kf/stool.jpg"]</script>';

        $product = $this->invoke($command, 'aliItemPage', [$html]);

        $this->assertSame('ali-1005009649248178', $product['external_id']);
        $this->assertSame('Shower Stool', $product['product_title']);
        $this->assertSame('Item', $product['sub_category']);
    }

    private function command(string $url): ScrapeDealerProducts
    {
        $command = $this->app->make(ScrapeDealerProducts::class);
        $site = new ReflectionProperty($command, 'site');
        $site->setValue($command, $url);

        return $command;
    }

    private function site(ScrapeDealerProducts $command): string
    {
        return (new ReflectionProperty($command, 'site'))->getValue($command);
    }

    /**
     * @param  list<mixed>  $arguments
     */
    private function invoke(ScrapeDealerProducts $command, string $method, array $arguments = []): mixed
    {
        $method = new ReflectionMethod($command, $method);

        return $method->invoke($command, ...$arguments);
    }
}
