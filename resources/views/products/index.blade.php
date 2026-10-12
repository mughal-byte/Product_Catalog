@extends('products.layout')

@section('title', $siteName)

@section('content')
    <p class="back"><a href="{{ route('sites.index') }}">All sites</a></p>
    <div class="page-head">
        <div>
            <h1>{{ $siteName }}</h1>
            <p>Choose a category. Its products open underneath.</p>
        </div>
        <div class="head-actions">
            <p class="meta">{{ $total }} {{ $total === 1 ? 'product' : 'products' }}</p>
            @include('sites.options', ['siteHost' => $site, 'includeOpen' => false])
        </div>
    </div>

    <form class="filters panel" method="get" action="{{ route('sites.show', $site) }}">
        <input type="search" name="q" value="{{ $search }}" placeholder="Search by title">
        <select name="card">
            <option value="" @selected($card === '' || $card === 'all')>All categories</option>
            @foreach ($cardOptions as $item)
                <option value="{{ $item->key }}" @selected($card === $item->key)>{{ $item->group }} / {{ $item->name }}</option>
            @endforeach
        </select>
        <button type="submit">Show</button>
    </form>

    @unless ($listing)
    @forelse ($categoryGroups as $group => $items)
        <h3 class="category-label">{{ $group }}</h3>
        <div class="category-picker">
            @foreach ($items as $item)
                <article class="card category-tile {{ $card === $item->key ? 'selected' : '' }}">
                    <a href="{{ route('sites.show', array_filter(['site' => $site, 'card' => $item->key, 'q' => $search])) }}#products">
                        @if ($item->cover)
                            <img src="{{ \App\Models\Product::publicUrl($item->cover) }}" alt="{{ $item->name }}" loading="lazy">
                        @else
                            <span class="frame"></span>
                        @endif
                        <div class="info">
                            @if ($item->group !== $item->name)
                                <p class="eyebrow">{{ $item->group }}</p>
                            @endif
                            <h2>{{ $item->name }}</h2>
                            <p class="count">{{ $item->products }} {{ $item->products === 1 ? 'product' : 'products' }}</p>
                            @if ($item->status === 'failed')
                                <span class="pill pill-failed">Left to scrape</span>
                            @elseif ($item->active)
                                <span class="pill">In line</span>
                            @endif
                        </div>
                    </a>
                    @can('scrape.run')
                        @if ($item->url)
                            @if ($item->active)
                                <a class="btn rescrape-link" href="{{ route('scrape.show', $item->run_id) }}">View</a>
                            @else
                                <form method="post" action="{{ route('sites.rescrape', $site) }}">
                                    @csrf
                                    <input type="hidden" name="site_url" value="{{ $item->url }}">
                                    <button type="submit">Rescrape</button>
                                </form>
                            @endif
                        @endif
                    @endcan
                </article>
            @endforeach
        </div>
    @empty
        <p>No categories yet.</p>
    @endforelse

    <h3 class="category-label">All</h3>
    <div class="category-picker">
        <article class="card category-tile {{ $card === 'all' ? 'selected' : '' }}">
            <a href="{{ route('sites.show', array_filter(['site' => $site, 'card' => 'all', 'q' => $search])) }}#products">
                <span class="frame all-mark"></span>
                <div class="info">
                    <h2>All categories</h2>
                    <p class="count">{{ $total }} {{ $total === 1 ? 'product' : 'products' }}</p>
                </div>
            </a>
        </article>
    </div>
    @endunless

    @if ($listing)
        <p class="back"><a href="{{ route('sites.show', $site) }}">Categories</a></p>
        <h2 id="products" class="product-heading">{{ $listingTitle }}</h2>
        <div class="grid">
            @forelse ($listing as $product)
                <article class="card product-card">
                    <a href="{{ route('products.show', ['site' => $site, 'product' => $product]) }}">
                        @if ($product->image1)
                            <img src="{{ \App\Models\Product::publicUrl($product->image1) }}" alt="{{ $product->product_title }}" loading="lazy">
                        @else
                            <span class="frame"></span>
                        @endif
                        <div class="info">
                            <p class="eyebrow">{{ $product->sub_category ?: $product->category }}</p>
                            <h2>{{ $product->product_title }}</h2>
                            <p class="price">
                                @if ($product->hasDiscount())
                                    <s>${{ $product->org_price }}</s>
                                    <strong>${{ $product->discounted_price }}</strong>
                                @elseif ($product->org_price)
                                    ${{ $product->org_price }}
                                @endif
                            </p>
                        </div>
                    </a>
                    @can('products.delete')
                        <form method="post" action="{{ route('products.destroy', ['site' => $site, 'product' => $product]) }}" class="card-delete" onsubmit="return confirm('Delete this product?')">
                            @csrf
                            @method('DELETE')
                            <button type="submit">Delete</button>
                        </form>
                    @endcan
                </article>
            @empty
                <p>No products in this category yet.</p>
            @endforelse
        </div>
        <div class="pager">{{ $listing->links('products.pagination') }}</div>
    @endif
@endsection
