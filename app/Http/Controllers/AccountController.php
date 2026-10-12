<?php

namespace App\Http\Controllers;

use Illuminate\Http\JsonResponse;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;
use Illuminate\View\View;

class AccountController extends Controller
{
    public function profile(): View
    {
        return view('account.profile', [
            'user' => auth()->user()->loadMissing('role'),
        ]);
    }

    public function updateProfile(Request $request): RedirectResponse
    {
        $data = $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'password' => ['nullable', 'string', 'min:8', 'confirmed'],
            'avatar' => ['nullable', 'image', 'max:2048'],
            'notifications' => ['nullable', 'boolean'],
        ]);

        $user = $request->user();
        $user->name = $data['name'];

        if (filled($data['password'] ?? null)) {
            $user->password = $data['password'];
        }

        if ($request->exists('notifications')) {
            $user->notifications = $request->boolean('notifications');
        }

        if ($request->hasFile('avatar')) {
            $file = $request->file('avatar');
            $name = $user->id.'-'.time().'.'.$file->extension();
            File::ensureDirectoryExists(public_path('avatars'));
            $file->move(public_path('avatars'), $name);

            if (filled($user->avatar)) {
                File::delete(public_path($user->avatar));
            }

            $user->avatar = 'avatars/'.$name;
        }

        $user->save();

        return redirect()->route('profile')->with('status', 'Profile saved.');
    }

    public function updateNotifications(Request $request): JsonResponse
    {
        $request->validate([
            'notifications' => ['required', 'boolean'],
        ]);

        $request->user()->update([
            'notifications' => $request->boolean('notifications'),
        ]);

        return response()->json([
            'notifications' => $request->user()->notifications,
        ]);
    }

    public function subscription(): View
    {
        $user = auth()->user()->loadMissing('role');
        $current = $user->hasRole('admin') ? null : $user->planKey();
        $plans = $this->plans();

        return view('account.subscription', [
            'user' => $user,
            'current' => $current,
            'currentName' => collect($plans)->firstWhere('key', $current)['name'] ?? null,
            'plans' => $plans,
        ]);
    }

    public function payment(string $plan): View
    {
        abort_if(auth()->user()->hasRole('admin'), 403);

        $chosen = collect($this->plans())->firstWhere('key', $plan);
        abort_unless(is_array($chosen), 404);

        return view('account.payment', [
            'user' => auth()->user(),
            'plan' => $chosen,
        ]);
    }

    public function subscribe(Request $request): RedirectResponse
    {
        abort_if($request->user()->hasRole('admin'), 403);

        $validator = Validator::make($request->all(), [
            'plan' => ['required', 'in:starter,catalog,studio'],
            'card_name' => ['required', 'string', 'max:80'],
            'card_number' => ['required', 'string', 'regex:/^(?:\d[ -]?){13,19}$/'],
            'expiry' => ['required', 'string', 'regex:/^(0[1-9]|1[0-2])\/\d{2}$/'],
            'cvc' => ['required', 'string', 'regex:/^\d{3,4}$/'],
        ]);

        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput($request->except(['card_number', 'cvc']));
        }

        $data = $validator->validated();

        $request->user()->update(['plan' => $data['plan']]);

        $name = collect($this->plans())->firstWhere('key', $data['plan'])['name'];

        return redirect()->route('subscription')->with('status', $name.' plan is active.');
    }

    /**
     * @return list<array{key: string, name: string, price: string, text: string, features: list<string>}>
     */
    private function plans(): array
    {
        return [
            [
                'key' => 'starter',
                'name' => 'Starter',
                'price' => '$2',
                'text' => 'Five catalogs for a small shop.',
                'features' => ['5 site catalogs', 'Scrape from any link', 'View categories and product details'],
            ],
            [
                'key' => 'catalog',
                'name' => 'Catalog',
                'price' => '$5',
                'text' => 'Fifty catalogs for a growing shop.',
                'features' => ['50 site catalogs', 'Categories and product details', 'Delete products'],
            ],
            [
                'key' => 'studio',
                'name' => 'Studio',
                'price' => '$10',
                'text' => 'Unlimited catalogs for one shop.',
                'features' => ['Unlimited catalogs', 'Categories and product details', 'Delete products'],
            ],
        ];
    }
}
