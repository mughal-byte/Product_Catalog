<?php

namespace Tests\Unit;

use App\Console\Commands\ScrapeDealerProducts;
use ReflectionMethod;
use Tests\TestCase;

class CategoryScrapeScopeTest extends TestCase
{
    public function test_scrape_more_stays_on_the_named_category(): void
    {
        $collections = [
            'coffee' => 'Coffee Tables',
            'dining' => 'Dining Tables',
            'chairs' => 'Dining Chairs',
            'special' => 'Special Collection',
        ];

        $coffee = $this->match($collections, 'Scrape more products in Coffee Tables. Save images, prices, description, and policy in this category.');
        $this->assertSame(['Coffee Tables'], array_values($coffee));

        $dining = $this->match($collections, 'Scrape more products in Dining Tables | Special Collection. Save images, prices, description, and policy in this category.');
        $this->assertEqualsCanonicalizing(['Dining Tables', 'Special Collection'], array_values($dining));
    }

    /**
     * @param  array<string, string>  $collections
     * @return array<string, string>
     */
    private function match(array $collections, string $prompt): array
    {
        $command = $this->app->make(ScrapeDealerProducts::class);
        $method = new ReflectionMethod($command, 'collectionsNamedInPrompt');

        return $method->invoke($command, $collections, $prompt);
    }
}
