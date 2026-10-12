<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('account_notices', function (Blueprint $table) {
            $table->timestamp('cleared_at')->nullable()->after('read_at');
        });

        Schema::create('notice_messages', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('sender_id')->index();
            $table->string('title');
            $table->text('body');
            $table->string('audience');
            $table->unsignedInteger('recipient_count')->default(0);
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('notice_messages');

        Schema::table('account_notices', function (Blueprint $table) {
            $table->dropColumn('cleared_at');
        });
    }
};
