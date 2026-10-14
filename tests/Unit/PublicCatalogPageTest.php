<?php

namespace Tests\Unit;

use App\Services\ChromePage;
use App\Services\PublicCatalogScraper;
use ReflectionMethod;
use Tests\TestCase;

class PublicCatalogPageTest extends TestCase
{
    public function test_a_blank_product_page_still_keeps_the_category_card(): void
    {
        $scraper = new PublicCatalogScraper($this->createMock(ChromePage::class));
        $method = new ReflectionMethod($scraper, 'merge');
        $product = $method->invoke($scraper, [
            'product_title' => 'Estelle Candle Holder',
            'product_link' => 'https://www.foagroup.com/categories/accent/accessory/estelle-32913.html',
            'image' => 'https://www.foagroup.com/media/catalog/product/holder.jpg',
            'org_price' => 809.0,
            'sku' => 'L94232C-4PK',
        ], '', 'https://www.foagroup.com/categories/accent/accessory.html');

        $this->assertSame('foa-32913', $product['external_id']);
        $this->assertSame('Estelle Candle Holder', $product['product_title']);
        $this->assertSame('Accent', $product['category']);
        $this->assertSame('Accessory', $product['sub_category']);
        $this->assertSame(809.0, $product['org_price']);
        $this->assertSame(['https://www.foagroup.com/media/catalog/product/holder.jpg'], $product['image_urls']);
    }
}
