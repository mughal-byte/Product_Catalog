<?php

namespace Tests\Feature;

use App\Models\AccountNotice;
use App\Models\NoticeMessage;
use App\Models\Role;
use App\Models\ScrapeRun;
use App\Models\User;
use Database\Seeders\RoleAndPermissionSeeder;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class AccountNoticeTest extends TestCase
{
    use RefreshDatabase;

    protected function setUp(): void
    {
        parent::setUp();

        $this->seed(RoleAndPermissionSeeder::class);
    }

    public function test_the_bell_keeps_notices_when_the_switch_is_off(): void
    {
        $user = $this->user();

        AccountNotice::forScrape($user->id, 'shop.test', 'completed', 4, 0, '');
        AccountNotice::forScrape($user->id, 'shop.test', 'completed', 0, 3, '');
        AccountNotice::forScrape($user->id, 'shop.test', 'failed', 0, 0, 'The page did not open.');

        $this->assertDatabaseHas('account_notices', ['title' => 'Scrape complete', 'body' => 'shop.test saved 4 products.']);
        $this->assertDatabaseHas('account_notices', ['title' => 'Catalog updated', 'body' => 'shop.test updated 3 products.']);
        $this->assertDatabaseHas('account_notices', ['title' => 'Scrape failed', 'body' => 'The page did not open.']);

        $this->actingAs($user)->get('/')
            ->assertOk()
            ->assertSee('Notification.requestPermission', false)
            ->assertSee('aria-label="Notifications"', false)
            ->assertSee('Scrape complete')
            ->assertSee('shop.test saved 4 products.')
            ->assertSee('Catalog updated')
            ->assertSee('The page did not open.');

        $user->update(['notifications' => false]);
        AccountNotice::forScrape($user->id, 'later.test', 'completed', 1, 0, '');

        $this->actingAs($user->fresh())->get('/')
            ->assertOk()
            ->assertSee('aria-label="Notifications"', false)
            ->assertSee('shop.test saved 4 products.')
            ->assertSee('shop.test updated 3 products.')
            ->assertSee('The page did not open.')
            ->assertSee('later.test saved 1 products.')
            ->assertDontSee('class="toast toast-notice"', false);

        $this->actingAs($user)->getJson('/notices')
            ->assertOk()
            ->assertJsonPath('on', false)
            ->assertJsonPath('unread', 4)
            ->assertJsonPath('fresh', [])
            ->assertJsonFragment(['title' => 'Scrape complete']);
    }

    public function test_a_new_and_updated_scrape_sends_both_notices(): void
    {
        $user = $this->user();

        AccountNotice::forScrape($user->id, 'shop.test', 'completed', 2, 5, '');

        $this->assertDatabaseHas('account_notices', ['kind' => 'complete', 'body' => 'shop.test saved 2 new products.']);
        $this->assertDatabaseHas('account_notices', ['kind' => 'update', 'body' => 'shop.test updated 5 products.']);
    }

    public function test_stopping_a_scrape_notifies_the_owner(): void
    {
        $user = $this->user();
        $run = ScrapeRun::query()->create([
            'user_id' => $user->id,
            'site_url' => 'https://shop.test/chairs',
            'prompt' => 'chairs',
            'status' => 'queued',
            'saved_count' => 0,
            'message' => 'Queued.',
        ]);

        $this->actingAs($user)->post(route('scrape.stop', $run))->assertRedirect();

        $this->assertDatabaseHas('account_notices', [
            'user_id' => $user->id,
            'title' => 'Scrape stopped',
            'body' => 'shop.test scrape was stopped.',
            'url' => '/scrape/'.$run->id,
        ]);
    }

    public function test_the_switch_turns_notices_off_immediately(): void
    {
        $user = $this->user();

        $this->actingAs($user)->putJson('/profile/notifications', ['notifications' => false])
            ->assertOk()
            ->assertJson(['notifications' => false]);

        $this->assertFalse($user->fresh()->notifications);

        $this->actingAs($user)->putJson('/profile/notifications', ['notifications' => true])
            ->assertOk()
            ->assertJson(['notifications' => true]);
    }

    public function test_a_notice_can_be_marked_read_by_its_owner(): void
    {
        $user = $this->user();
        $other = $this->user();
        AccountNotice::forScrape($user->id, 'shop.test', 'completed', 1, 0, '');
        $notice = AccountNotice::query()->firstOrFail();

        $this->actingAs($other)->post(route('notices.read', $notice))->assertNotFound();
        $this->actingAs($user)->post(route('notices.read', $notice))->assertRedirect('/sites/shop.test');
        $this->assertNotNull($notice->fresh()->read_at);
    }

    public function test_clear_all_hides_only_that_accounts_bell_card(): void
    {
        $user = $this->user();
        $other = $this->user();
        AccountNotice::forScrape($user->id, 'shop.test', 'completed', 2, 0, '');
        AccountNotice::forScrape($other->id, 'shop.test', 'completed', 2, 0, '');
        NoticeMessage::query()->create([
            'sender_id' => $user->id,
            'title' => 'Kept',
            'body' => 'Still on the admin page.',
            'audience' => 'All accounts',
            'recipient_count' => 2,
        ]);

        $this->actingAs($user)->postJson(route('notices.clear'))->assertOk()->assertJson(['cleared' => true]);

        $this->actingAs($user)->get('/')
            ->assertOk()
            ->assertDontSee('shop.test saved 2 products.')
            ->assertSee('Clear all', false);

        $this->assertSame(2, AccountNotice::query()->count());
        $this->assertNotNull(AccountNotice::query()->where('user_id', $user->id)->value('cleared_at'));
        $this->assertNull(AccountNotice::query()->where('user_id', $other->id)->value('cleared_at'));
        $this->assertSame(1, NoticeMessage::query()->count());

        $this->actingAs($other)->get('/')->assertOk()->assertSee('shop.test saved 2 products.');
    }

    public function test_an_admin_can_send_a_notification_to_one_account(): void
    {
        $admin = User::query()->where('email', 'admin@gmail.com')->firstOrFail();
        $user = $this->user();
        $other = $this->user();

        $this->actingAs($user)->get('/notify')->assertForbidden();

        $this->actingAs($admin)->post('/notify', [
            'title' => 'Shop update',
            'body' => 'New catalogs are ready.',
            'audience' => 'user',
            'user_id' => $user->id,
        ])->assertRedirect(route('notify'));

        $this->actingAs($user)->get('/')->assertOk()->assertSee('Shop update')->assertSee('New catalogs are ready.');
        $this->actingAs($other)->get('/')->assertOk()->assertDontSee('New catalogs are ready.');
        $this->actingAs($admin)->get('/notify')->assertOk()->assertSee('Shop update')->assertSee($user->email)->assertSee('Edit')->assertSee('Delete');

        $sent = NoticeMessage::query()->firstOrFail();

        $this->actingAs($user)->put(route('notify.update', $sent), [
            'title' => 'Changed',
            'body' => 'Nope.',
        ])->assertForbidden();

        $this->actingAs($admin)->put(route('notify.update', $sent), [
            'title' => 'Shop note',
            'body' => 'The catalog list changed.',
        ])->assertRedirect(route('notify'));

        $this->actingAs($user)->get('/')->assertOk()->assertSee('Shop note')->assertSee('The catalog list changed.')->assertDontSee('New catalogs are ready.');

        $this->actingAs($user)->delete(route('notify.destroy', $sent))->assertForbidden();
        $this->actingAs($admin)->delete(route('notify.destroy', $sent))->assertRedirect(route('notify'));

        $this->assertSame(0, NoticeMessage::query()->count());
        $this->actingAs($user)->get('/')->assertOk()->assertDontSee('Shop note');
    }

    private function user(): User
    {
        return User::factory()->create([
            'role_id' => Role::query()->where('slug', 'user')->value('id'),
            'notifications' => true,
            'plan' => 'none',
        ]);
    }
}
