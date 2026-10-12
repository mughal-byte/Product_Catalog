<?php

namespace Database\Seeders;

use App\Models\Permission;
use App\Models\Role;
use App\Models\User;
use Illuminate\Database\Seeder;

class RoleAndPermissionSeeder extends Seeder
{
    public function run(): void
    {
        $permissions = [
            'catalogs.view' => 'View catalogs',
            'products.delete' => 'Delete products',
            'catalogs.delete' => 'Delete catalogs',
            'scrape.run' => 'Run scrapes',
            'users.manage' => 'Manage users',
        ];

        $ids = [];

        foreach ($permissions as $slug => $name) {
            $ids[$slug] = Permission::query()->updateOrCreate(
                ['slug' => $slug],
                ['name' => $name],
            )->id;
        }

        $roles = [
            'admin' => [
                'name' => 'Admin',
                'description' => 'Opens everything, including users and deleting a catalog.',
                'permissions' => array_keys($permissions),
            ],
            'user' => [
                'name' => 'User',
                'description' => 'Opens catalogs, runs scrapes, and deletes products.',
                'permissions' => ['catalogs.view', 'products.delete', 'scrape.run'],
            ],
        ];

        $userRole = null;

        foreach ($roles as $slug => $role) {
            $model = Role::query()->updateOrCreate(
                ['slug' => $slug],
                ['name' => $role['name'], 'description' => $role['description']],
            );

            $model->permissions()->sync(array_map(fn (string $permission) => $ids[$permission], $role['permissions']));

            if ($slug === 'user') {
                $userRole = $model;
            }
        }

        $retired = Role::query()->whereIn('slug', ['editor', 'viewer'])->get();

        foreach ($retired as $role) {
            User::query()->where('role_id', $role->id)->update(['role_id' => $userRole->id]);
            $role->permissions()->detach();
            $role->delete();
        }

        $accounts = [
            ['name' => 'Admin', 'email' => 'admin@catalogs.test', 'role' => 'admin'],
        ];

        foreach ($accounts as $account) {
            $roleId = Role::query()->where('slug', $account['role'])->value('id');

            User::query()->firstOrCreate(
                ['email' => $account['email']],
                [
                    'name' => $account['name'],
                    'password' => 'Catalogs#2026',
                    'role_id' => $roleId,
                    'email_verified_at' => now(),
                ],
            );
        }
    }
}
