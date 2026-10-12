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
            $table->string('url')->nullable()->after('body');
        });

        foreach (DB::table('account_notices')->whereNull('url')->get() as $notice) {
            $host = null;

            if (in_array($notice->kind, ['complete', 'update'], true) && preg_match('/^(\S+) (?:saved|updated) /', (string) $notice->body, $match)) {
                $host = $match[1];
            }

            if ($notice->kind === 'stopped' && preg_match('/^(\S+) scrape was stopped\./', (string) $notice->body, $match)) {
                $host = $match[1];
            }

            if (is_string($host) && $host !== '' && $host !== 'catalog') {
                DB::table('account_notices')->where('id', $notice->id)->update([
                    'url' => '/sites/'.$host,
                ]);
            }
        }
    }

    public function down(): void
    {
        Schema::table('account_notices', function (Blueprint $table) {
            $table->dropColumn('url');
        });
    }
};
