<?php

use App\Http\Controllers\AccountController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\NoticeController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\ScrapeController;
use App\Http\Controllers\SocialAuthController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

Route::middleware('guest')->group(function () {
    Route::get('/login', [LoginController::class, 'create'])->name('login');
    Route::post('/login', [LoginController::class, 'store']);
    Route::get('/register', [RegisterController::class, 'create'])->name('register');
    Route::post('/register', [RegisterController::class, 'store'])->name('register.store');
    Route::get('/auth/{provider}', [SocialAuthController::class, 'redirect'])->name('social.redirect')->where('provider', 'google|github');
    Route::get('/auth/{provider}/callback', [SocialAuthController::class, 'callback'])->name('social.callback')->where('provider', 'google|github');
});

Route::post('/logout', [LoginController::class, 'destroy'])->middleware('auth')->name('logout');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [AccountController::class, 'profile'])->name('profile');
    Route::put('/profile', [AccountController::class, 'updateProfile'])->name('profile.update');
    Route::put('/profile/notifications', [AccountController::class, 'updateNotifications'])->name('profile.notifications');
    Route::get('/notices', [NoticeController::class, 'index'])->name('notices.index');
    Route::post('/notices/clear', [NoticeController::class, 'clear'])->name('notices.clear');
    Route::post('/notices/{notice}/read', [NoticeController::class, 'read'])->name('notices.read');
    Route::get('/subscription', [AccountController::class, 'subscription'])->name('subscription');
    Route::get('/subscription/{plan}/payment', [AccountController::class, 'payment'])->name('subscription.payment')->where('plan', 'starter|catalog|studio');
    Route::post('/subscription', [AccountController::class, 'subscribe'])->name('subscription.store');

    Route::middleware('permission:catalogs.view')->group(function () {
        Route::get('/', [ProductController::class, 'home'])->name('sites.index');
        Route::get('/sites/{site}', [ProductController::class, 'index'])->name('sites.show')->where('site', '[a-z0-9.-]+');
        Route::get('/sites/{site}/products/{product}', [ProductController::class, 'show'])->name('products.show')->where(['site' => '[a-z0-9.-]+', 'product' => '[0-9]+']);
    });

    Route::middleware('permission:scrape.run')->group(function () {
        Route::post('/sites/{site}/rescrape', [ScrapeController::class, 'rescrape'])->name('sites.rescrape')->where('site', '[a-z0-9.-]+');
        Route::get('/scrape', [ScrapeController::class, 'create'])->name('scrape.create');
        Route::post('/scrape', [ScrapeController::class, 'store'])->name('scrape.store');
        Route::get('/scrape/{run}', [ScrapeController::class, 'show'])->name('scrape.show');
        Route::post('/scrape/{run}/stop', [ScrapeController::class, 'stop'])->name('scrape.stop');
        Route::post('/scrape/{run}/restart', [ScrapeController::class, 'restart'])->name('scrape.restart');
    });

    Route::delete('/sites/{site}', [ProductController::class, 'destroySite'])->name('sites.destroy')->where('site', '[a-z0-9.-]+')->middleware('permission:catalogs.delete');
    Route::delete('/sites/{site}/products/{product}', [ProductController::class, 'destroy'])->name('products.destroy')->where(['site' => '[a-z0-9.-]+', 'product' => '[0-9]+'])->middleware('permission:products.delete');

    Route::middleware(['role:admin', 'permission:users.manage'])->group(function () {
        Route::get('/notify', [NoticeController::class, 'compose'])->name('notify');
        Route::post('/notify', [NoticeController::class, 'send'])->name('notify.store');
        Route::get('/notify/{message}/edit', [NoticeController::class, 'edit'])->name('notify.edit');
        Route::put('/notify/{message}', [NoticeController::class, 'update'])->name('notify.update');
        Route::delete('/notify/{message}', [NoticeController::class, 'destroy'])->name('notify.destroy');
        Route::get('/users', [UserController::class, 'index'])->name('users.index');
        Route::get('/users/create', [UserController::class, 'create'])->name('users.create');
        Route::post('/users', [UserController::class, 'store'])->name('users.store');
        Route::get('/users/{user}/edit', [UserController::class, 'edit'])->name('users.edit');
        Route::put('/users/{user}', [UserController::class, 'update'])->name('users.update');
        Route::delete('/users/{user}', [UserController::class, 'destroy'])->name('users.destroy');
    });
});
