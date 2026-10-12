<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Attributes\Fillable;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;

#[Fillable([
    'user_id',
    'site_url',
    'prompt',
    'status',
    'saved_count',
    'message',
])]
class ScrapeRun extends Model
{
    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'saved_count' => 'integer',
        ];
    }

    public function isActive(): bool
    {
        return in_array($this->status, ['running', 'queued', 'hold'], true);
    }

    /**
     * @param  Builder<static>  $query
     * @return Builder<static>
     */
    public function scopeForViewer(Builder $query): Builder
    {
        return $query->where('user_id', auth()->id());
    }
}
