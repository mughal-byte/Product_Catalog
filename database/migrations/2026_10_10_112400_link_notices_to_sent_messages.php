<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('account_notices', function (Blueprint $table) {
            $table->unsignedBigInteger('message_id')->nullable()->index()->after('user_id');
        });

        if (! Schema::hasTable('notice_messages')) {
            return;
        }

        foreach (DB::table('notice_messages')->orderBy('id')->get() as $message) {
            DB::table('account_notices')
                ->whereNull('message_id')
                ->where('kind', 'message')
                ->where('title', $message->title)
                ->where('body', $message->body)
                ->update(['message_id' => $message->id]);
        }
    }

    public function down(): void
    {
        Schema::table('account_notices', function (Blueprint $table) {
            $table->dropColumn('message_id');
        });
    }
};
