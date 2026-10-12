<?php

use App\Models\Product;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Str;

return new class extends Migration
{
    /**
     * Put each catalog's category tables in a database named for that catalog.
     */
    public function up(): void
    {
        if (! Schema::hasTable('catalog_categories')) {
            return;
        }

        if (! Schema::hasColumn('catalog_categories', 'database_name')) {
            Schema::table('catalog_categories', function (Blueprint $table): void {
                $table->string('database_name')->nullable();
            });
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
        if (! Schema::hasTable('catalog_categories') || ! Schema::hasColumn('catalog_categories', 'database_name')) {
            return;
        }

        if (Schema::getConnection()->getDriverName() === 'mysql') {
            $main = DB::getDatabaseName();
            $databases = [];

            foreach (DB::table('catalog_categories')->orderBy('id')->get() as $row) {
                $database = (string) ($row->database_name ?? '');

                if ($database === '' || $database === $main) {
                    continue;
                }

                $legacy = $this->legacyName((string) $row->host, (string) $row->category);

                if (! Schema::hasTable($legacy)) {
                    DB::statement(
                        'RENAME TABLE '.$this->quote($database).'.'.$this->quote((string) $row->table_name)
                        .' TO '.$this->quote($main).'.'.$this->quote($legacy)
                    );
                }

                DB::table('catalog_categories')->where('id', $row->id)->update([
                    'table_name' => $legacy,
                    'database_name' => null,
                    'updated_at' => now(),
                ]);
                $databases[$database] = true;
            }

            foreach (array_keys($databases) as $database) {
                $left = DB::select('select count(*) as aggregate from information_schema.tables where table_schema = ?', [$database]);

                if ((int) ($left[0]->aggregate ?? 0) === 0) {
                    DB::statement('DROP DATABASE IF EXISTS '.$this->quote($database));
                }
            }
        }

        Schema::table('catalog_categories', function (Blueprint $table): void {
            $table->dropColumn('database_name');
        });
    }

    private function legacyName(string $host, string $folder): string
    {
        $host = strtolower($host);
        $site = str_replace('.', '_', $host);
        $category = Str::slug($folder, '_') ?: 'uncategorized';
        $name = $site.'_'.$category;

        if (str_starts_with($name, 'catalog_')) {
            $name = 'site_'.$name;
        }

        if (strlen($name) <= 64) {
            return $name;
        }

        $suffix = '_'.substr(hash('sha256', $host."\0".$folder), 0, 6);

        return substr($name, 0, 64 - strlen($suffix)).$suffix;
    }

    private function quote(string $name): string
    {
        return '`'.str_replace('`', '``', $name).'`';
    }
};
