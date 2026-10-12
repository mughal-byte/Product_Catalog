<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('products', function (Blueprint $table) {
            $table->string('site_host')->nullable()->index()->after('external_id');
            $table->string('site_name')->nullable()->after('site_host');
        });

        DB::table('products')->orderBy('id')->lazyById()->each(function (object $product): void {
            $host = strtolower((string) parse_url((string) $product->product_link, PHP_URL_HOST));
            $host = preg_replace('/^www\./', '', $host) ?? $host;

            if ($host === '') {
                return;
            }

            DB::table('products')->where('id', $product->id)->update([
                'site_host' => $host,
                'site_name' => $host,
            ]);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('products', function (Blueprint $table) {
            $table->dropColumn(['site_host', 'site_name']);
        });
    }
};
