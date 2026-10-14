<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Attributes\Fillable;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Str;

#[Fillable([
    'external_id',
    'site_host',
    'site_name',
    'category',
    'sub_category',
    'product_title',
    'product_link',
    'image1',
    'image2',
    'image3',
    'image4',
    'image5',
    'description',
    'org_price',
    'discounted_price',
    'policy',
    'user_id',
])]
class Product extends Model
{
    /** @var array<string, true> */
    private static array $ownedTables = [];

    /** @var array<string, bool> */
    private static array $databaseAvailable = [];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'org_price' => 'decimal:2',
            'discounted_price' => 'decimal:2',
        ];
    }

    protected static function booted(): void
    {
        static::creating(function (self $product): void {
            if ($product->getAttribute('id') !== null || $product->site_host === null) {
                return;
            }

            $product->id = static::nextId((string) $product->site_host);
        });
    }

    public static function tableName(string $host): string
    {
        $name = 'catalog_'.str_replace('.', '_', strtolower($host));

        return substr($name, 0, 64);
    }

    public static function hostFromTable(string $table): string
    {
        return str_replace('_', '.', substr($table, strlen('catalog_')));
    }

    public static function ensureTable(string $host): string
    {
        return static::prepareTable(static::tableName($host));
    }

    public static function catalogDatabaseName(string $host): string
    {
        return strtolower($host);
    }

    public static function categoryLabel(string $folder): string
    {
        $name = trim(str_replace(['/', '\\', '.'], '-', $folder));
        $name = $name === '' ? 'Uncategorized' : $name;

        if (strlen($name) <= 64) {
            return $name;
        }

        $suffix = '_'.substr(hash('sha256', $folder), 0, 6);

        return rtrim(substr($name, 0, 64 - strlen($suffix))).$suffix;
    }

    public static function categoryTableName(string $host, string $folder): string
    {
        if (static::usesCatalogDatabase()) {
            return static::categoryLabel($folder);
        }

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

    public static function usesCatalogDatabase(): bool
    {
        return Schema::getConnection()->getDriverName() === 'mysql';
    }

    public static function ensureCatalogDatabase(string $host): string
    {
        if (! static::usesCatalogDatabase()) {
            return (string) config('database.default');
        }

        $database = static::catalogDatabaseName($host);
        DB::statement('CREATE DATABASE IF NOT EXISTS '.static::quoteIdentifier($database).' CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci');
        unset(static::$databaseAvailable[strtolower($host)]);

        return static::openCatalogConnection($database);
    }

    public static function catalogDatabaseAvailable(string $host): bool
    {
        $host = strtolower($host);

        if (! static::usesCatalogDatabase()) {
            return true;
        }

        if (array_key_exists($host, static::$databaseAvailable)) {
            return static::$databaseAvailable[$host];
        }

        $database = Schema::hasTable('catalog_categories') && Schema::hasColumn('catalog_categories', 'database_name')
            ? DB::table('catalog_categories')->where('host', $host)->whereNotNull('database_name')->value('database_name')
            : null;
        $main = DB::connection()->getDatabaseName();

        if (! is_string($database) || $database === '' || $database === $main) {
            return static::$databaseAvailable[$host] = true;
        }

        $exists = DB::selectOne(
            'select SCHEMA_NAME from information_schema.SCHEMATA where SCHEMA_NAME = ? limit 1',
            [$database],
        );

        return static::$databaseAvailable[$host] = $exists !== null;
    }

    private static function emptyCatalogQuery(): Builder
    {
        $columns = [
            'id', 'user_id', 'external_id', 'site_host', 'site_name', 'category', 'sub_category',
            'product_title', 'product_link', 'image1', 'image2', 'image3', 'image4', 'image5',
            'description', 'org_price', 'discounted_price', 'policy', 'created_at', 'updated_at',
        ];
        $select = implode(', ', array_map(
            fn (string $column): string => 'null as `'.$column.'`',
            $columns,
        ));
        $model = new static;

        return $model->newQuery()->fromSub(
            DB::query()->selectRaw($select)->whereRaw('1 = 0'),
            'catalog_products',
        );
    }

    public static function storageConnection(string $host): string
    {
        $default = (string) config('database.default');

        if (! static::usesCatalogDatabase() || ! Schema::hasTable('catalog_categories') || ! Schema::hasColumn('catalog_categories', 'database_name')) {
            return $default;
        }

        $database = DB::table('catalog_categories')->where('host', strtolower($host))->whereNotNull('database_name')->value('database_name');
        $main = DB::connection($default)->getDatabaseName();

        if (! is_string($database) || $database === '' || $database === $main) {
            return $default;
        }

        return static::openCatalogConnection($database);
    }

    public static function openCatalogConnection(string $database): string
    {
        $name = 'site_'.substr(hash('sha256', $database), 0, 16);
        $default = (string) config('database.default');

        if (config("database.connections.{$name}.database") !== $database) {
            $base = config("database.connections.{$default}");
            $base['database'] = $database;
            config(["database.connections.{$name}" => $base]);
            DB::purge($name);
        }

        return $name;
    }

    private static function quoteIdentifier(string $name): string
    {
        return '`'.str_replace('`', '``', $name).'`';
    }

    private static function relocateCategoryTable(object $existing, ?string $targetDatabase, string $targetTable, string $targetConnection): void
    {
        $sourceTable = (string) $existing->table_name;
        $main = DB::getDatabaseName();
        $sourceDatabase = (is_string($existing->database_name ?? null) && $existing->database_name !== '')
            ? $existing->database_name
            : $main;
        $targetDatabase ??= $main;

        if ($sourceDatabase === $targetDatabase && $sourceTable === $targetTable) {
            return;
        }

        $default = (string) config('database.default');
        $sourceConnection = $sourceDatabase === $main ? $default : static::openCatalogConnection($sourceDatabase);
        $sourceExists = Schema::connection($sourceConnection)->hasTable($sourceTable);
        $targetExists = Schema::connection($targetConnection)->hasTable($targetTable);

        if ($sourceExists && $targetExists) {
            throw new \RuntimeException("Category table {$targetTable} already exists.");
        }

        if ($sourceExists && ! $targetExists) {
            if ($sourceDatabase === $targetDatabase) {
                Schema::connection($sourceConnection)->rename($sourceTable, $targetTable);
            } else {
                DB::statement(
                    'RENAME TABLE '.static::quoteIdentifier($sourceDatabase).'.'.static::quoteIdentifier($sourceTable)
                    .' TO '.static::quoteIdentifier($targetDatabase).'.'.static::quoteIdentifier($targetTable)
                );
            }

            unset(static::$ownedTables[$sourceConnection.'|'.$sourceTable]);
        }
    }

    public static function ownerIndexName(string $table): string
    {
        return 'ux_'.substr(hash('sha256', $table), 0, 16);
    }

    public static function imageRootForHost(string $host): string
    {
        $host = strtolower($host);

        if (str_contains($host, 'nydiamondusa') || str_contains($host, 'nydaimondusa')) {
            return 'Images/nydaimondusa';
        }

        return 'Images/'.(explode('.', $host)[0] ?: 'site');
    }

    public static function ensureCategory(string $host, ?string $category): string
    {
        $host = strtolower($host);
        $folder = static::categoryFolder($category);
        $relative = static::imageRootForHost($host).'/'.$folder;
        File::ensureDirectoryExists(public_path($relative));

        $connection = static::ensureCatalogDatabase($host);
        $table = static::categoryTableName($host, $folder);
        $database = static::usesCatalogDatabase() ? static::catalogDatabaseName($host) : null;
        $existing = DB::table('catalog_categories')->where('host', $host)->where('category', $folder)->first();

        if ($existing !== null) {
            static::relocateCategoryTable($existing, $database, $table, $connection);
        }

        static::prepareTable($table, $connection);

        $now = now();
        $values = [
            'table_name' => $table,
            'folder' => $relative,
            'updated_at' => $now,
        ];

        if (Schema::hasColumn('catalog_categories', 'database_name')) {
            $values['database_name'] = $database;
        }

        $registered = DB::table('catalog_categories')->where('host', $host)->where('category', $folder)->exists();

        if ($registered) {
            DB::table('catalog_categories')->where('host', $host)->where('category', $folder)->update($values);
        } else {
            DB::table('catalog_categories')->insert([
                'host' => $host,
                'category' => $folder,
                'created_at' => $now,
                ...$values,
            ]);
        }

        return $table;
    }

    public static function nextId(string $host): int
    {
        $max = 0;

        if (! static::catalogDatabaseAvailable($host)) {
            return 1;
        }

        $connection = static::storageConnection($host);

        foreach (static::tablesForHost($host) as $table) {
            $max = max($max, (int) DB::connection($connection)->table($table)->max('id'));
        }

        return $max + 1;
    }

    /**
     * @return list<string>
     */
    public static function tablesForHost(string $host): array
    {
        $host = strtolower($host);
        $tables = [];

        if (Schema::hasTable('catalog_categories')) {
            $tables = DB::table('catalog_categories')->where('host', $host)->orderBy('category')->pluck('table_name')->all();
        }

        $legacy = static::tableName($host);

        if (Schema::hasTable($legacy) && Schema::hasColumn($legacy, 'external_id') && ! in_array($legacy, $tables, true)) {
            $tables[] = $legacy;
        }

        return array_values($tables);
    }

    public static function forCategory(string $host, ?string $category): Builder
    {
        $host = strtolower($host);

        return static::onTable($host, static::ensureCategory($host, $category));
    }

    public static function locate(string $host, int $id, bool $onlyViewer = false): ?self
    {
        foreach (static::tablesForHost($host) as $table) {
            $query = static::onTable($host, $table)->whereKey($id);

            if ($onlyViewer) {
                $query->where('user_id', auth()->id());
            }

            $found = $query->first();

            if ($found instanceof self) {
                return $found;
            }
        }

        return null;
    }

    public static function dropHost(string $host): void
    {
        $host = strtolower($host);
        $available = static::catalogDatabaseAvailable($host);
        $connection = $available ? static::storageConnection($host) : (string) config('database.default');
        $database = static::usesCatalogDatabase() ? static::catalogDatabaseName($host) : null;
        $default = (string) config('database.default');

        if ($available) {
            foreach (static::tablesForHost($host) as $table) {
                Schema::connection($connection)->dropIfExists($table);
                unset(static::$ownedTables[$connection.'|'.$table]);
            }
        }

        Schema::dropIfExists(static::tableName($host));

        if (Schema::hasTable('catalog_categories')) {
            DB::table('catalog_categories')->where('host', $host)->delete();
        }

        if (is_string($database) && $database !== DB::getDatabaseName() && $connection !== $default) {
            DB::disconnect($connection);
            DB::purge($connection);
            DB::statement('DROP DATABASE IF EXISTS '.static::quoteIdentifier($database));
        }

        unset(static::$databaseAvailable[$host]);
    }

    public static function onTable(string $host, string $table): Builder
    {
        if (! static::catalogDatabaseAvailable($host)) {
            return static::emptyCatalogQuery();
        }

        $model = new static;
        $model->setConnection(static::storageConnection($host));
        $model->setTable($table);

        return $model->newQuery();
    }

    private static function prepareTable(string $table, ?string $connection = null): string
    {
        $connection ??= (string) config('database.default');
        $key = $connection.'|'.$table;
        $schema = Schema::connection($connection);

        if (isset(static::$ownedTables[$key]) && $schema->hasTable($table)) {
            return $table;
        }

        if (! $schema->hasTable($table)) {
            $schema->create($table, function (Blueprint $table): void {
                $table->id();
                $table->unsignedBigInteger('user_id')->nullable()->index();
                $table->string('external_id');
                $table->unique(['user_id', 'external_id'], static::ownerIndexName($table->getTable()));
                $table->string('site_host')->nullable()->index();
                $table->string('site_name')->nullable();
                $table->string('category');
                $table->string('sub_category')->nullable()->index();
                $table->text('product_title');
                $table->text('product_link');
                $table->string('image1')->nullable();
                $table->string('image2')->nullable();
                $table->string('image3')->nullable();
                $table->string('image4')->nullable();
                $table->string('image5')->nullable();
                $table->longText('description')->nullable();
                $table->decimal('org_price', 12, 2)->nullable();
                $table->decimal('discounted_price', 12, 2)->nullable();
                $table->longText('policy')->nullable();
                $table->timestamps();
            });
        }

        static::ensureOwner($table, $connection);
        static::$ownedTables[$key] = true;

        return $table;
    }

    public static function ensureOwner(string $table, ?string $connection = null): void
    {
        $connection ??= (string) config('database.default');
        $schema = Schema::connection($connection);

        if (! $schema->hasTable($table) || ! $schema->hasColumn($table, 'external_id')) {
            return;
        }

        if (! $schema->hasColumn($table, 'user_id')) {
            $schema->table($table, function (Blueprint $table): void {
                $table->unsignedBigInteger('user_id')->nullable()->index();
            });
        }

        $externalUnique = null;
        $hasOwnerUnique = false;

        foreach ($schema->getIndexes($table) as $index) {
            if (! ($index['unique'] ?? false)) {
                continue;
            }

            $columns = array_values($index['columns'] ?? []);

            if ($columns === ['external_id']) {
                $externalUnique = $index['name'] ?? null;
            }

            if ($columns === ['user_id', 'external_id']) {
                $hasOwnerUnique = true;
            }
        }

        if (is_string($externalUnique) && $externalUnique !== '') {
            $schema->table($table, function (Blueprint $table) use ($externalUnique): void {
                $table->dropUnique($externalUnique);
            });
        }

        if (! $hasOwnerUnique) {
            $schema->table($table, function (Blueprint $table): void {
                $table->unique(['user_id', 'external_id'], static::ownerIndexName($table->getTable()));
            });
        }
    }

    public static function forHost(string $host): Builder
    {
        static::relocateSharedProducts();

        $tables = static::tablesForHost($host);

        if ($tables !== [] && ! static::catalogDatabaseAvailable($host)) {
            return static::emptyCatalogQuery();
        }

        if ($tables === []) {
            $legacy = static::tableName($host);

            if (Schema::hasTable($legacy) && Schema::hasColumn($legacy, 'external_id')) {
                $model = new static;
                $model->setTable($legacy);

                return $model->newQuery();
            }

            return static::emptyCatalogQuery();
        }

        $connection = static::storageConnection($host);

        if (count($tables) === 1) {
            return static::onTable($host, $tables[0]);
        }

        $union = null;

        foreach ($tables as $table) {
            $piece = DB::connection($connection)->table($table)->select('*');
            $union = $union === null ? $piece : $union->unionAll($piece);
        }

        $model = new static;
        $model->setConnection($connection);
        $model->setTable('catalog_products');

        return $model->newQuery()->fromSub($union, 'catalog_products');
    }

    public static function visible(string $host): Builder
    {
        return static::forHost($host)->where('user_id', auth()->id());
    }

    /**
     * @return list<string>
     */
    public static function catalogHosts(): array
    {
        static::relocateSharedProducts();

        $hosts = [];

        if (Schema::hasTable('catalog_categories')) {
            $hosts = DB::table('catalog_categories')->distinct()->pluck('host')->all();
        }

        $connection = Schema::getConnection();
        $database = $connection->getDatabaseName();
        $sqlite = $connection->getDriverName() === 'sqlite';

        foreach (Schema::getTables() as $table) {
            $name = $table['name'] ?? '';
            $schema = $table['schema'] ?? '';
            $sameDatabase = $schema === $database || ($sqlite && ($schema === 'main' || $schema === ''));

            if ($sameDatabase && str_starts_with($name, 'catalog_') && $name !== 'catalog_categories' && Schema::hasColumn($name, 'external_id')) {
                $hosts[] = static::hostFromTable($name);
            }
        }

        sort($hosts);

        return $hosts;
    }

    public static function relocateSharedProducts(): void
    {
        if (! Schema::hasTable('products') || ! DB::table('products')->exists()) {
            return;
        }

        $hosts = DB::table('products')->whereNotNull('site_host')->distinct()->pluck('site_host');

        foreach ($hosts as $host) {
            DB::table('products')->where('site_host', $host)->orderBy('id')->chunkById(200, function ($rows) use ($host): void {
                foreach ($rows as $row) {
                    $table = static::ensureCategory((string) $host, $row->sub_category ?: ($row->category ?? null));
                    $values = (array) $row;
                    unset($values['id']);

                    DB::connection(static::storageConnection((string) $host))->table($table)->updateOrInsert(
                        ['external_id' => $row->external_id],
                        $values,
                    );
                }
            });

            DB::table('products')->where('site_host', $host)->delete();
        }
    }

    /**
     * @return list<string>
     */
    public function images(): array
    {
        return array_values(array_filter([
            $this->image1,
            $this->image2,
            $this->image3,
            $this->image4,
            $this->image5,
        ]));
    }

    public static function normalizeSiteUrl(string $url): string
    {
        $url = trim($url);

        if (preg_match_all('#https?://#i', $url, $matches, PREG_OFFSET_CAPTURE) && count($matches[0]) > 1) {
            $url = substr($url, $matches[0][count($matches[0]) - 1][1]);
        }

        if (! str_starts_with($url, 'http://') && ! str_starts_with($url, 'https://')) {
            $url = 'https://'.$url;
        }

        return $url;
    }

    public static function hostFromLink(?string $url): ?string
    {
        $host = strtolower((string) parse_url((string) $url, PHP_URL_HOST));
        $host = preg_replace('/^www\./', '', $host) ?? $host;

        return $host !== '' ? $host : null;
    }

    public function siteHost(): string
    {
        return $this->site_host ?: (static::hostFromLink($this->product_link) ?? 'site');
    }

    public function siteName(): string
    {
        return $this->site_name ?: $this->siteHost();
    }

    public static function fillMissingSites(): void
    {
        static::query()
            ->whereNull('site_host')
            ->orderBy('id')
            ->each(function (self $product): void {
                $host = static::hostFromLink($product->product_link);

                if ($host === null) {
                    return;
                }

                $product->forceFill([
                    'site_host' => $host,
                    'site_name' => $host,
                ])->save();
            });
    }

    public function hasDiscount(): bool
    {
        if ($this->org_price === null || $this->discounted_price === null) {
            return false;
        }

        return (float) $this->discounted_price < (float) $this->org_price;
    }

    public static function categoryFolder(?string $subCategory): string
    {
        $name = trim(explode(' | ', (string) $subCategory)[0]);
        $name = str_replace(['/', '\\'], '-', $name);

        return $name === '' ? 'Uncategorized' : $name;
    }

    public static function categoryKey(?string $url): string
    {
        $host = static::hostFromLink($url) ?? '';
        $path = rtrim((string) parse_url((string) $url, PHP_URL_PATH), '/');

        return $host.'|'.($path === '' ? '/' : $path);
    }

    /**
     * @return array{0: string, 1: ?string}
     */
    public static function categoryNames(?string $url): array
    {
        $path = (string) parse_url((string) $url, PHP_URL_PATH);
        $names = [];

        foreach (array_filter(explode('/', trim($path, '/'))) as $part) {
            if ($part === 'categories') {
                continue;
            }

            $names[] = ucwords(str_replace(['-', '_'], ' ', preg_replace('/\.html$/', '', urldecode($part)) ?? $part));
        }

        return [$names[0] ?? 'Catalog', $names[1] ?? null];
    }

    public static function publicUrl(?string $path): ?string
    {
        if ($path === null || $path === '') {
            return null;
        }

        return asset(implode('/', array_map('rawurlencode', explode('/', $path))));
    }
}
