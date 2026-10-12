<?php

use App\Models\Product;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('scrape_runs', function (Blueprint $table) {
            $table->unsignedBigInteger('user_id')->nullable()->index();
        });

        $database = DB::getDatabaseName();

        foreach (Schema::getTables() as $table) {
            $name = $table['name'] ?? '';

            if (($table['schema'] ?? '') !== $database || ! str_starts_with($name, 'catalog_')) {
                continue;
            }

            Product::ensureTable(Product::hostFromTable($name));
        }

        $adminId = DB::table('users')->where('email', 'admin@gmail.com')->value('id');

        if ($adminId === null) {
            return;
        }

        DB::table('scrape_runs')->whereNull('user_id')->update(['user_id' => $adminId]);

        foreach (Schema::getTables() as $table) {
            $name = $table['name'] ?? '';

            if (($table['schema'] ?? '') !== $database || ! str_starts_with($name, 'catalog_')) {
                continue;
            }

            if (Schema::hasColumn($name, 'user_id')) {
                DB::table($name)->whereNull('user_id')->update(['user_id' => $adminId]);
            }
        }
    }

    public function down(): void
    {
        Schema::table('scrape_runs', function (Blueprint $table) {
            $table->dropColumn('user_id');
        });
    }
};
