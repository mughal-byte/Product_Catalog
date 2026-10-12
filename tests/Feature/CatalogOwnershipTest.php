<?php

namespace Tests\Feature;

use App\Models\Product;
use App\Models\Role;
use App\Models\ScrapeRun;
use App\Models\User;
use Database\Seeders\RoleAndPermissionSeeder;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Schema;
use Tests\TestCase;

class CatalogOwnershipTest extends TestCase
{
    use RefreshDatabase;

    protected function setUp(): void
    {
        parent::setUp();

        $this->seed(RoleAndPermissionSeeder::class);
    }

    public function test_another_user_cannot_open_someone_elses_catalog(): void
    {
        $admin = User::query()->where('email', 'admin@catalogs.test')->firstOrFail();
        $other = User::factory()->create([
            'role_id' => Role::query()->where('slug', 'user')->value('id'),
        ]);

        Product::forCategory('private-catalog.test', 'Chairs')->create([
            'user_id' => $admin->id,
            'external_id' => 'p1',
            'site_host' => 'private-catalog.test',
            'site_name' => 'private-catalog.test',
            'category' => 'Rooms',
            'sub_category' => 'Chairs',
            'product_title' => 'Secret Chair',
            'product_link' => 'https://private-catalog.test/p/1',
        ]);

        $stored = Product::forHost('private-catalog.test')->where('external_id', 'p1')->first();
        $this->assertNotNull($stored);
        $this->assertSame($admin->id, (int) $stored->user_id);
        $productId = $stored->id;

        $run = ScrapeRun::query()->create([
            'user_id' => $admin->id,
            'site_url' => 'https://private-catalog.test/secret',
            'prompt' => 'private',
            'status' => 'failed',
            'saved_count' => 0,
        ]);

        $this->actingAs($other)->get('/')->assertOk()->assertDontSee('private-catalog.test')->assertDontSee('Secret Chair');
        $this->actingAs($other)->get('/sites/private-catalog.test')->assertNotFound();
        $this->actingAs($other)->get('/sites/private-catalog.test/products/'.$productId)->assertNotFound();
        $this->actingAs($other)->get('/scrape')->assertDontSee('private-catalog.test/secret');
        $this->actingAs($other)->get(route('scrape.show', $run))->assertNotFound();

        $this->actingAs($admin)->get('/')->assertOk()->assertSee('private-catalog.test');
        $this->actingAs($admin)
            ->get('/sites/private-catalog.test?card='.urlencode('Rooms|Chairs'))
            ->assertOk()
            ->assertSee('Chairs')
            ->assertSee('Secret Chair');
        $this->actingAs($admin)->get('/sites/private-catalog.test/products/'.$productId)->assertOk()->assertSee('Secret Chair');
    }

    public function test_each_category_gets_its_own_folder_and_product_table(): void
    {
        $admin = User::query()->where('email', 'admin@catalogs.test')->firstOrFail();
        $root = public_path('Images/folders');

        try {
            foreach (['Chairs' => 'c1', 'Beds' => 'b1'] as $folder => $externalId) {
                Product::forCategory('folders.test', $folder)->create([
                    'user_id' => $admin->id,
                    'external_id' => $externalId,
                    'site_host' => 'folders.test',
                    'site_name' => 'folders.test',
                    'category' => 'Rooms',
                    'sub_category' => $folder,
                    'product_title' => $folder,
                    'product_link' => 'https://folders.test/'.$externalId,
                ]);
            }

            $chairTable = Product::categoryTableName('folders.test', 'Chairs');
            $bedTable = Product::categoryTableName('folders.test', 'Beds');

            $this->assertSame('Bed', Product::categoryLabel('Bed'));
            $this->assertSame('Chests & Dressers & Night Stand', Product::categoryLabel('Chests & Dressers & Night Stand'));
            $this->assertSame('foagroup.com', Product::catalogDatabaseName('FOAGroup.com'));
            $this->assertSame('folders_test_chairs', $chairTable);
            $this->assertSame('folders_test_beds', $bedTable);
            $this->assertNotSame($chairTable, $bedTable);
            $this->assertTrue(Schema::hasTable($chairTable));
            $this->assertTrue(Schema::hasTable($bedTable));
            $this->assertSame(1, DB::table($chairTable)->count());
            $this->assertSame(1, DB::table($bedTable)->count());
            $this->assertSame(2, Product::forHost('folders.test')->count());
            $this->assertNotSame((int) DB::table($chairTable)->value('id'), (int) DB::table($bedTable)->value('id'));
            $this->assertDirectoryExists($root.'/Chairs');
            $this->assertDirectoryExists($root.'/Beds');
            $this->assertSame(2, DB::table('catalog_categories')->where('host', 'folders.test')->count());
        } finally {
            Product::dropHost('folders.test');
            File::deleteDirectory($root);
        }
    }
}
