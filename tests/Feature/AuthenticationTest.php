<?php

namespace Tests\Feature;

use App\Models\Role;
use App\Models\User;
use Database\Seeders\RoleAndPermissionSeeder;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\File;
use Tests\TestCase;

class AuthenticationTest extends TestCase
{
    use RefreshDatabase;

    protected function setUp(): void
    {
        parent::setUp();

        $this->seed(RoleAndPermissionSeeder::class);
    }

    public function test_guest_is_sent_to_login(): void
    {
        $this->get('/')->assertRedirect(route('login'));
        $this->get('/scrape')->assertRedirect(route('login'));
    }

    public function test_user_can_sign_in_and_out(): void
    {
        $this->post('/login', [
            'email' => 'admin@catalogs.test',
            'password' => 'Catalogs#2026',
        ])->assertRedirect(route('sites.index'));

        $this->assertAuthenticated();

        $this->post('/logout')->assertRedirect(route('login'));
        $this->assertGuest();
    }

    public function test_user_can_scrape_and_not_manage_users(): void
    {
        $user = User::factory()->create([
            'role_id' => Role::query()->where('slug', 'user')->value('id'),
        ]);

        $this->actingAs($user)->get('/')->assertOk()->assertDontSee('Users');
        $this->actingAs($user)->get('/subscription')->assertOk()->assertSee('No subscription yet')->assertSee('2 catalogs')->assertDontSee('Current plan');
        $this->actingAs($user)->get('/scrape')->assertOk();
        $this->actingAs($user)->get('/users')->assertForbidden();
        $this->actingAs($user)->delete('/sites/example.com')->assertForbidden();
    }

    public function test_guest_can_register_as_a_user(): void
    {
        $this->post('/register', [
            'name' => 'Ayesha',
            'email' => 'ayesha@catalogs.test',
            'password' => 'Catalogs#2026',
            'password_confirmation' => 'Catalogs#2026',
        ])->assertRedirect(route('sites.index'));

        $user = User::query()->where('email', 'ayesha@catalogs.test')->firstOrFail();

        $this->assertAuthenticatedAs($user);
        $this->assertTrue($user->hasRole('user'));
        $this->assertSame('none', $user->plan);
        $this->assertSame(2, $user->catalogLimit());
    }

    public function test_social_login_without_credentials_returns_to_login(): void
    {
        config([
            'services.google.client_id' => null,
            'services.google.client_secret' => null,
            'services.github.client_id' => null,
            'services.github.client_secret' => null,
        ]);

        $this->get('/auth/google')->assertRedirect(route('login'))->assertSessionHasErrors('email');
        $this->get('/auth/github')->assertRedirect(route('login'))->assertSessionHasErrors('email');
    }

    public function test_account_menu_opens_profile_and_subscription(): void
    {
        $admin = User::query()->where('email', 'admin@catalogs.test')->firstOrFail();

        $this->actingAs($admin)
            ->get('/')
            ->assertOk()
            ->assertSee('Profile')
            ->assertSee('Subscription')
            ->assertSee('Users')
            ->assertSee('Log out');

        $this->actingAs($admin)->get('/profile')->assertOk()->assertSee('Save profile');
        $this->actingAs($admin)->put('/profile', ['name' => 'Catalog Admin'])->assertRedirect(route('profile'));
        $this->assertSame('Catalog Admin', $admin->fresh()->name);

        $this->actingAs($admin)->get('/subscription')
            ->assertOk()
            ->assertSee('Starter')
            ->assertSee('$2')
            ->assertSee('Catalog')
            ->assertSee('$5')
            ->assertSee('Studio')
            ->assertSee('$10')
            ->assertSee('5 site catalogs')
            ->assertSee('50 site catalogs')
            ->assertSee('Unlimited catalogs')
            ->assertDontSee('stay with Admin')
            ->assertDontSee('Current plan');

        $admin->update(['avatar' => 'avatars/face.png']);
        $this->actingAs($admin->fresh())->get('/')->assertOk()->assertSee('avatars/face.png', false);
    }

    public function test_profile_saves_photo_and_notification_switch(): void
    {
        $admin = User::query()->where('email', 'admin@catalogs.test')->firstOrFail();

        $this->actingAs($admin)->put('/profile', [
            'name' => 'Admin',
            'notifications' => '0',
            'avatar' => UploadedFile::fake()->image('face.png', 80, 80),
        ])->assertRedirect(route('profile'));

        $admin->refresh();
        $this->assertFalse($admin->notifications);
        $this->assertNotNull($admin->avatar);
        $this->assertFileExists(public_path($admin->avatar));
        File::delete(public_path($admin->avatar));
    }

    public function test_admin_can_add_a_user(): void
    {
        $admin = User::query()->where('email', 'admin@catalogs.test')->firstOrFail();
        $userRole = Role::query()->where('slug', 'user')->firstOrFail();

        $this->actingAs($admin)->post('/users', [
            'name' => 'New User',
            'email' => 'new@catalogs.test',
            'password' => 'Catalogs#2026',
            'password_confirmation' => 'Catalogs#2026',
            'role_id' => $userRole->id,
        ])->assertRedirect(route('users.index'));

        $this->assertDatabaseHas('users', [
            'email' => 'new@catalogs.test',
            'role_id' => $userRole->id,
        ]);
    }
}
