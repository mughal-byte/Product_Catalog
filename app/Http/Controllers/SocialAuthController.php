<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\User;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use Laravel\Socialite\Facades\Socialite;
use Throwable;

class SocialAuthController extends Controller
{
    public function redirect(string $provider): RedirectResponse
    {
        $this->guardProvider($provider);

        if (blank(config("services.$provider.client_id")) || blank(config("services.$provider.client_secret"))) {
            return redirect()->route('login')->withErrors([
                'email' => $this->label($provider).' sign-in needs a client id and secret in the app settings.',
            ]);
        }

        return Socialite::driver($provider)->redirect();
    }

    public function callback(string $provider): RedirectResponse
    {
        $this->guardProvider($provider);

        try {
            $socialUser = Socialite::driver($provider)->user();
        } catch (Throwable) {
            return redirect()->route('login')->withErrors([
                'email' => $this->label($provider).' sign-in did not finish. Try again.',
            ]);
        }

        $email = $socialUser->getEmail();

        if (blank($email)) {
            return redirect()->route('login')->withErrors([
                'email' => $this->label($provider).' did not share an email for this account.',
            ]);
        }

        $column = $provider.'_id';

        $user = User::query()->where($column, $socialUser->getId())->first()
            ?? User::query()->where('email', $email)->first();

        if ($user === null) {
            $user = User::query()->create([
                'name' => $socialUser->getName() ?: $socialUser->getNickname() ?: $this->label($provider).' user',
                'email' => $email,
                $column => $socialUser->getId(),
                'password' => Str::password(32),
                'role_id' => Role::query()->where('slug', 'user')->value('id'),
                'plan' => 'none',
                'email_verified_at' => now(),
            ]);
        } elseif ($user->{$column} === null) {
            $user->update([$column => $socialUser->getId()]);
        }

        Auth::login($user, true);
        request()->session()->regenerate();

        return redirect()->intended(route('sites.index'));
    }

    private function guardProvider(string $provider): void
    {
        abort_unless(in_array($provider, ['google', 'github'], true), 404);
    }

    private function label(string $provider): string
    {
        return $provider === 'github' ? 'GitHub' : 'Google';
    }
}
