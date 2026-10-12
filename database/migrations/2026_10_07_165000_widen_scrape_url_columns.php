<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('scrape_runs', function (Blueprint $table) {
            $table->text('site_url')->change();
        });

        Schema::table('products', function (Blueprint $table) {
            $table->text('product_title')->change();
            $table->text('product_link')->change();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('scrape_runs', function (Blueprint $table) {
            $table->string('site_url')->change();
        });

        Schema::table('products', function (Blueprint $table) {
            $table->string('product_title')->change();
            $table->string('product_link')->change();
        });
    }
};
