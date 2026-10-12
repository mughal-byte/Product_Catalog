<?php

use App\Models\Product;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Give each category table a readable site and category name.
     */
    public function up(): void
    {
        if (! Schema::hasTable('catalog_categories')) {
            return;
        }

        foreach (DB::table('catalog_categories')->orderBy('id')->get() as $row) {
            Product::ensureCategory((string) $row->host, (string) $row->category);
        }
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        if (! Schema::hasTable('catalog_categories')) {
            return;
        }

        foreach (DB::table('catalog_categories')->orderBy('id')->get() as $row) {
            $hash = 'ct'.substr(hash('sha256', strtolower((string) $row->host)."\0".$row->category), 0, 20);

            if ($row->table_name !== $hash && Schema::hasTable($row->table_name) && ! Schema::hasTable($hash)) {
                Schema::rename($row->table_name, $hash);
            }

            DB::table('catalog_categories')->where('id', $row->id)->update([
                'table_name' => $hash,
                'updated_at' => now(),
            ]);
        }
    }
};
