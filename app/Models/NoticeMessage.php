<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Attributes\Fillable;
use Illuminate\Database\Eloquent\Model;

#[Fillable(['sender_id', 'title', 'body', 'audience', 'recipient_count'])]
class NoticeMessage extends Model
{
    /**
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'recipient_count' => 'integer',
        ];
    }
}
