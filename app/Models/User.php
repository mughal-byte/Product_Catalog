<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Database\Factories\UserFactory;
use Illuminate\Database\Eloquent\Attributes\Fillable;
use Illuminate\Database\Eloquent\Attributes\Hidden;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

#[Fillable(['name', 'email', 'avatar', 'notifications', 'google_id', 'github_id', 'password', 'role_id', 'plan'])]
#[Hidden(['password', 'remember_token'])]
class User extends Authenticatable
{
    /** @use HasFactory<UserFactory> */
    use HasFactory, Notifiable;

    public function role(): BelongsTo
    {
        return $this->belongsTo(Role::class);
    }

    public function hasRole(string $slug): bool
    {
        $this->loadMissing('role');

        return $this->role?->slug === $slug;
    }

    public function hasPermission(string $slug): bool
    {
        $this->loadMissing('role.permissions');

        if ($slug === 'products.delete' && $this->planKey() === 'starter' && ! $this->hasRole('admin')) {
            return false;
        }

        return (bool) $this->role?->permissions->contains('slug', $slug);
    }

    public function planKey(): string
    {
        return in_array($this->plan, ['none', 'starter', 'catalog', 'studio'], true) ? $this->plan : 'none';
    }

    public function catalogLimit(): ?int
    {
        if ($this->hasRole('admin') || $this->planKey() === 'studio') {
            return null;
        }

        return match ($this->planKey()) {
            'starter' => 5,
            'catalog' => 50,
            default => 2,
        };
    }

    public function canAddCatalog(string $host): bool
    {
        $limit = $this->catalogLimit();

        if ($limit === null || in_array($host, $this->ownedCatalogHosts(), true)) {
            return true;
        }

        return count($this->ownedCatalogHosts()) < $limit;
    }

    /**
     * @return list<string>
     */
    public function ownedCatalogHosts(): array
    {
        $hosts = [];

        foreach (Product::catalogHosts() as $host) {
            if (Product::forHost($host)->where('user_id', $this->id)->exists()) {
                $hosts[] = $host;
            }
        }

        foreach (ScrapeRun::query()->where('user_id', $this->id)->pluck('site_url') as $url) {
            $host = Product::hostFromLink($url);

            if (is_string($host) && $host !== '' && ! in_array($host, $hosts, true)) {
                $hosts[] = $host;
            }
        }

        return $hosts;
    }

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'notifications' => 'boolean',
            'password' => 'hashed',
        ];
    }
}
