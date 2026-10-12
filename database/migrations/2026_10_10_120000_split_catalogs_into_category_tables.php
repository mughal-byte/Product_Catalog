<?php

use App\Models\Product;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Move each site catalog into one product table per category folder.
     */
    public function up(): void
    {
        Schema::create('catalog_categories', function (Blueprint $table): void {
            $table->id();
            $table->string('host');
            $table->string('category');
            $table->string('table_name');
            $table->string('folder');
            $table->timestamps();
            $table->unique(['host', 'category']);
            $table->index('host');
        });

        $connection = Schema::getConnection();
        $database = $connection->getDatabaseName();
        $sqlite = $connection->getDriverName() === 'sqlite';

        foreach (Schema::getTables() as $table) {
            $name = $table['name'] ?? '';
            $schema = $table['schema'] ?? '';
            $sameDatabase = $schema === $database || ($sqlite && ($schema === 'main' || $schema === ''));

            if (! $sameDatabase || ! str_starts_with($name, 'catalog_') || $name === 'catalog_categories' || ! Schema::hasColumn($name, 'external_id')) {
                continue;
            }

            $host = strtolower(Product::hostFromTable($name));
            $before = DB::table($name)->count();

            DB::table($name)->orderBy('id')->chunkById(200, function ($rows) use ($host): void {
                foreach ($rows as $row) {
                    $target = Product::ensureCategory($host, $row->sub_category ?: $row->category);
                    DB::table($target)->insert((array) $row);
                }
            });

            $after = 0;

            foreach (DB::table('catalog_categories')->where('host', $host)->pluck('table_name') as $target) {
                $after += DB::table($target)->count();
            }

            if ($after !== $before) {
                throw new RuntimeException("Catalog {$host} moved {$after} of {$before} products.");
            }

            Schema::dropIfExists($name);
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

        foreach (DB::table('catalog_categories')->distinct()->pluck('host') as $host) {
            $legacy = Product::ensureTable((string) $host);

            foreach (DB::table('catalog_categories')->where('host', $host)->pluck('table_name') as $table) {
                if (! Schema::hasTable($table)) {
                    continue;
                }

                DB::table($table)->orderBy('id')->chunkById(200, function ($rows) use ($legacy): void {
                    foreach ($rows as $row) {
                        DB::table($legacy)->insert((array) $row);
                    }
                });

                Schema::dropIfExists($table);
            }
        }

        Schema::dropIfExists('catalog_categories');
    }
};
