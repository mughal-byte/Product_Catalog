<?php

namespace Tests\Feature;

use App\Models\Product;
use App\Models\Role;
use App\Models\ScrapeRun;
use App\Models\User;
use Database\Seeders\RoleAndPermissionSeeder;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class CatalogPlanTest extends TestCase
{
    use RefreshDatabase;

    protected function setUp(): void
    {
        parent::setUp();

        $this->seed(RoleAndPermissionSeeder::class);
    }

    public function test_an_account_without_a_subscription_stops_at_two_catalogs(): void
    {
        $user = $this->user('none');

        foreach (range(1, 2) as $number) {
            ScrapeRun::query()->create([
                'user_id' => $user->id,
                'site_url' => 'https://free'.$number.'.test/chairs',
                'prompt' => 'chairs',
                'status' => 'completed',
                'saved_count' => 0,
            ]);
        }

        $this->assertSame(2, $user->catalogLimit());
        $this->assertFalse($user->canAddCatalog('free3.test'));
        $this->assertTrue($user->canAddCatalog('free1.test'));

        $this->actingAs($user)->post('/scrape', [
            'site_url' => 'https://free3.test/tables',
            'prompt' => 'tables',
        ])->assertSessionHasErrors('site_url');

        $this->assertSame(2, ScrapeRun::query()->count());
    }

    public function test_starter_can_scrape_five_catalogs_and_cannot_delete_products(): void
    {
        $user = $this->user('starter');

        foreach (range(1, 5) as $number) {
            ScrapeRun::query()->create([
                'user_id' => $user->id,
                'site_url' => 'https://shop'.$number.'.test/chairs',
                'prompt' => 'chairs',
                'status' => 'completed',
                'saved_count' => 0,
            ]);
        }

        $this->assertFalse($user->canAddCatalog('shop6.test'));
        $this->assertTrue($user->canAddCatalog('shop1.test'));

        $this->actingAs($user)->post('/scrape', [
            'site_url' => 'https://shop6.test/tables',
            'prompt' => 'tables',
        ])->assertSessionHasErrors('site_url');

        $this->assertSame(5, ScrapeRun::query()->count());

        $product = Product::forCategory('shop1.test', 'Chairs')->create([
            'user_id' => $user->id,
            'external_id' => 'p1',
            'site_host' => 'shop1.test',
            'site_name' => 'shop1.test',
            'category' => 'Rooms',
            'sub_category' => 'Chairs',
            'product_title' => 'Chair',
            'product_link' => 'https://shop1.test/p/1',
        ]);

        $this->actingAs($user)->delete('/sites/shop1.test/products/'.$product->id)->assertForbidden();
        $this->actingAs($user)->get('/users')->assertForbidden();
    }

    public function test_catalog_stops_at_fifty_and_studio_does_not(): void
    {
        $catalog = $this->user('catalog');

        foreach (range(1, 50) as $number) {
            ScrapeRun::query()->create([
                'user_id' => $catalog->id,
                'site_url' => 'https://row'.$number.'.test/',
                'prompt' => 'home',
                'status' => 'completed',
                'saved_count' => 0,
            ]);
        }

        $this->assertFalse($catalog->canAddCatalog('extra.test'));
        $this->assertSame(50, $catalog->catalogLimit());

        $studio = $this->user('studio');
        $this->assertNull($studio->catalogLimit());
        $this->assertTrue($studio->canAddCatalog('extra.test'));
        $this->actingAs($studio)->get('/users')->assertForbidden();
        $this->actingAs($studio)->get('/subscription')->assertOk()->assertSee('Current plan')->assertSee('Unlimited catalogs');
    }

    public function test_a_user_can_subscribe_to_a_plan(): void
    {
        $user = $this->user('none');

        $this->actingAs($user)->get('/subscription')->assertOk()->assertSee('/subscription/catalog/payment', false);

        $this->actingAs($user)->get('/subscription/catalog/payment')->assertOk()->assertSee('Payment')->assertSee('Pay $5');

        $this->actingAs($user)->post('/subscription', [
            'plan' => 'catalog',
            'card_name' => 'Subscribe Check',
            'card_number' => '4242424242424242',
            'expiry' => '12/28',
            'cvc' => '123',
        ])->assertRedirect(route('subscription'))
            ->assertSessionHas('status', 'Catalog plan is active.');

        $this->assertSame('catalog', $user->fresh()->plan);
        $this->assertSame(50, $user->fresh()->catalogLimit());
        $this->actingAs($user->fresh())->get('/subscription')->assertSee('Current plan');
    }

    public function test_admin_is_not_limited_and_can_open_users(): void
    {
        $admin = User::query()->where('email', 'admin@gmail.com')->firstOrFail();

        $this->assertNull($admin->catalogLimit());
        $this->assertTrue($admin->canAddCatalog('extra.test'));
        $this->actingAs($admin)->get('/users')->assertOk();
        $this->actingAs($admin)->get('/subscription')->assertOk()->assertDontSee('/subscription/starter/payment', false);
        $this->actingAs($admin)->get('/subscription/starter/payment')->assertForbidden();
        $this->actingAs($admin)->post('/subscription', [
            'plan' => 'starter',
            'card_name' => 'Admin',
            'card_number' => '4242424242424242',
            'expiry' => '12/28',
            'cvc' => '123',
        ])->assertForbidden();
    }

    private function user(string $plan): User
    {
        return User::factory()->create([
            'role_id' => Role::query()->where('slug', 'user')->value('id'),
            'plan' => $plan,
        ]);
    }
}
