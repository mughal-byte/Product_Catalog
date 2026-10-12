<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\User;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Validation\ValidationException;
use Illuminate\View\View;

class UserController extends Controller
{
    public function index(): View
    {
        return view('users.index', [
            'users' => User::query()->with('role')->orderBy('name')->get(),
            'roles' => Role::query()->orderBy('name')->get(),
        ]);
    }

    public function create(): View
    {
        return view('users.form', [
            'user' => new User,
            'roles' => Role::query()->orderBy('name')->get(),
        ]);
    }

    public function store(Request $request): RedirectResponse
    {
        $data = $this->validated($request);

        User::query()->create($data);

        return redirect()->route('users.index')->with('status', 'User added.');
    }

    public function edit(User $user): View
    {
        return view('users.form', [
            'user' => $user,
            'roles' => Role::query()->orderBy('name')->get(),
        ]);
    }

    public function update(Request $request, User $user): RedirectResponse
    {
        $data = $this->validated($request, $user);
        $this->guardLastAdmin($user, (int) $data['role_id']);

        if ($data['password'] === null) {
            unset($data['password']);
        }

        $user->update($data);

        return redirect()->route('users.index')->with('status', 'User updated.');
    }

    public function destroy(User $user): RedirectResponse
    {
        if ($user->is(auth()->user())) {
            throw ValidationException::withMessages([
                'user' => 'You cannot delete the account you are using.',
            ]);
        }

        $this->guardLastAdmin($user, null);
        $user->delete();

        return redirect()->route('users.index')->with('status', 'User deleted.');
    }

    /**
     * @return array{name: string, email: string, password: string|null, role_id: int}
     */
    private function validated(Request $request, ?User $user = null): array
    {
        $data = $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'email', 'max:255', Rule::unique('users', 'email')->ignore($user)],
            'password' => [$user ? 'nullable' : 'required', 'string', 'min:8', 'confirmed'],
            'role_id' => ['required', 'integer', Rule::exists('roles', 'id')],
        ]);

        if (blank($data['password'] ?? null)) {
            $data['password'] = null;
        }

        return $data;
    }

    private function guardLastAdmin(User $user, ?int $newRoleId): void
    {
        $adminId = Role::query()->where('slug', 'admin')->value('id');

        if ($adminId === null || $user->role_id !== $adminId) {
            return;
        }

        if ($newRoleId === $adminId) {
            return;
        }

        $others = User::query()->where('role_id', $adminId)->whereKeyNot($user->id)->exists();

        if (! $others) {
            throw ValidationException::withMessages([
                'role_id' => 'The last admin has to keep the Admin role.',
            ]);
        }
    }
}
