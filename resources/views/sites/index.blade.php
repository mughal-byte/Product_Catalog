@extends('products.layout')

@section('title', 'Catalogs')

@section('content')
    <div class="page-head">
        <div>
            <h1>Catalogs</h1>
            <p>Each scraped site has its own page.</p>
        </div>
        <p class="meta">{{ $sites->count() }} {{ $sites->count() === 1 ? 'site' : 'sites' }}</p>
    </div>

    <div class="grid catalog-grid">
        @forelse ($sites as $site)
            <article class="card site-card">
                <a class="site-link" href="{{ route('sites.show', $site->site_host) }}">
                    @if ($site->cover)
                        <img class="cover" src="{{ \App\Models\Product::publicUrl($site->cover) }}" alt="{{ $site->site_name }}">
                    @else
                        <span class="mark">{{ strtoupper(substr($site->site_name, 0, 1)) }}</span>
                    @endif
                    <div class="info">
                        <p class="eyebrow">Site</p>
                        <h2>{{ $site->site_name }}</h2>
                        <p class="stats">
                            {{ $site->products_count }} {{ $site->products_count === 1 ? 'product' : 'products' }}
                            @if ($site->categories_count > 0)
                                · {{ $site->categories_count }} {{ $site->categories_count === 1 ? 'category' : 'categories' }}
                            @endif
                        </p>
                        <p class="open">Open catalog</p>
                    </div>
                </a>
                @include('sites.options', ['siteHost' => $site->site_host])
            </article>
        @empty
            @can('scrape.run')
                <p>No sites yet. Open Scrape and paste a site link.</p>
            @else
                <p>No sites yet.</p>
            @endcan
        @endforelse
    </div>
@endsection
