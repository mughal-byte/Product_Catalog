<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (Schema::getConnection()->getDriverName() === 'mysql') {
            DB::statement("ALTER TABLE users MODIFY plan VARCHAR(255) NOT NULL DEFAULT 'none'");
        }

        $adminIds = DB::table('roles')->where('slug', 'admin')->pluck('id');

        DB::table('users')
            ->where('plan', 'catalog')
            ->when($adminIds->isNotEmpty(), fn ($query) => $query->whereNotIn('role_id', $adminIds))
            ->update(['plan' => 'none']);
    }

    public function down(): void
    {
        if (Schema::getConnection()->getDriverName() === 'mysql') {
            DB::statement("ALTER TABLE users MODIFY plan VARCHAR(255) NOT NULL DEFAULT 'catalog'");
        }
    }
};
