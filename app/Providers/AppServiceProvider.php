<?php

namespace App\Providers;

use App\Models\AccountNotice;
use App\Models\User;
use App\Services\ChromePage;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        $this->app->singleton(ChromePage::class);
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Gate::before(function (User $user, string $ability) {
            if (! str_contains($ability, '.')) {
                return null;
            }

            return $user->hasPermission($ability);
        });

        View::composer('products.layout', function ($view): void {
            $user = auth()->user();
            $view->with([
                'accountNotices' => $user
                    ? AccountNotice::query()->open()->where('user_id', $user->id)->latest()->limit(8)->get()
                    : collect(),
                'freshNotices' => $user?->notifications ? AccountNotice::claimFresh($user->id) : collect(),
                'unreadNotices' => $user
                    ? AccountNotice::query()->open()->where('user_id', $user->id)->whereNull('read_at')->count()
                    : 0,
            ]);
        });
    }
}
