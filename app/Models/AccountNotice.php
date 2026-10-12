<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Attributes\Fillable;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

#[Fillable(['user_id', 'message_id', 'kind', 'title', 'body', 'url', 'shown_at', 'read_at', 'cleared_at'])]
class AccountNotice extends Model
{
    /**
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'shown_at' => 'datetime',
            'read_at' => 'datetime',
            'cleared_at' => 'datetime',
        ];
    }

    /**
     * @param  Builder<static>  $query
     * @return Builder<static>
     */
    public function scopeOpen(Builder $query): Builder
    {
        return $query->whereNull('cleared_at');
    }

    public static function send(?int $userId, string $kind, string $title, string $body, ?int $messageId = null, ?string $url = null): void
    {
        if ($userId === null) {
            return;
        }

        $user = User::query()->find($userId);

        if ($user === null) {
            return;
        }

        static::query()->create([
            'user_id' => $user->id,
            'message_id' => $messageId,
            'kind' => $kind,
            'title' => $title,
            'body' => Str::limit(trim($body), 240),
            'url' => $url,
        ]);
    }

    public static function forScrape(?int $userId, string $host, string $status, int $created, int $updated, string $message, ?int $runId = null): void
    {
        $url = static::destination($host, $status, $runId);

        if ($status === 'completed' && $updated > 0 && $created === 0) {
            static::send($userId, 'update', 'Catalog updated', "{$host} updated {$updated} products.", null, $url);

            return;
        }

        if ($status === 'completed' && $updated > 0 && $created > 0) {
            static::send($userId, 'complete', 'Scrape complete', "{$host} saved {$created} new products.", null, $url);
            static::send($userId, 'update', 'Catalog updated', "{$host} updated {$updated} products.", null, $url);

            return;
        }

        if ($status === 'completed') {
            static::send($userId, 'complete', 'Scrape complete', "{$host} saved {$created} products.", null, $url);

            return;
        }

        if ($status === 'failed') {
            static::send($userId, 'failed', 'Scrape failed', $message !== '' ? $message : "{$host} scrape failed.", null, $url);

            return;
        }

        if ($status === 'stopped') {
            static::send($userId, 'stopped', 'Scrape stopped', "{$host} scrape was stopped.", null, $url);
        }
    }

    public static function destination(string $host, string $status, ?int $runId): ?string
    {
        if (in_array($status, ['failed', 'stopped'], true) && $runId) {
            return route('scrape.show', $runId, false);
        }

        if ($host !== '' && $host !== 'catalog') {
            return route('sites.show', $host, false);
        }

        return $runId ? route('scrape.show', $runId, false) : null;
    }

    /**
     * @return Collection<int, static>
     */
    public static function claimFresh(int $userId, int $limit = 3): Collection
    {
        $fresh = static::query()
            ->open()
            ->where('user_id', $userId)
            ->whereNull('shown_at')
            ->latest()
            ->limit($limit)
            ->get();

        return $fresh->filter(function (self $notice): bool {
            return static::query()->whereKey($notice->id)->whereNull('shown_at')->update(['shown_at' => now()]) === 1;
        })->values();
    }
}
