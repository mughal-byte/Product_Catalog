@extends('products.layout')

@section('title', 'Subscription')

@section('content')
    <div class="page-head">
        <div>
            <h1>Subscription</h1>
            @if ($user->hasRole('admin'))
                <p>This account has every access. These plans are for other accounts.</p>
            @elseif ($current === 'none')
                <p>No subscription yet. This account can use 2 catalogs.</p>
            @else
                <p>This account is on {{ $currentName }}.</p>
            @endif
        </div>
    </div>

    <div class="plan-grid">
        @foreach ($plans as $plan)
            <article class="panel plan {{ $plan['key'] === $current ? 'current' : '' }}">
                <p class="eyebrow">Monthly</p>
                <h2>{{ $plan['name'] }}</h2>
                <p class="plan-price">{{ $plan['price'] }} <span>/ month</span></p>
                <p>{{ $plan['text'] }}</p>
                <ul>
                    @foreach ($plan['features'] as $feature)
                        <li>{{ $feature }}</li>
                    @endforeach
                </ul>
                @if ($plan['key'] === $current)
                    <span class="pill pill-completed">Current plan</span>
                @elseif (! $user->hasRole('admin'))
                    <a class="subscribe" href="{{ route('subscription.payment', $plan['key']) }}">Subscription</a>
                @endif
            </article>
        @endforeach
    </div>

    <section class="plan-sheet">
        <div class="plan-scale" aria-label="Catalogs included">
            <div><span>No plan</span><strong>2</strong></div>
            <div><span>Starter</span><strong>5</strong></div>
            <div><span>Catalog</span><strong>50</strong></div>
            <div><span>Studio</span><strong>Unlimited</strong></div>
        </div>
        <div class="panel plan-ledger">
            <div>
                <span>Same site</span>
                <p>A new category on a site you already have stays in that catalog. Only a new site counts toward the limit.</p>
            </div>
            <div>
                <span>Saved</span>
                <p>Categories, product details, prices, and up to five images. The same link updates the same folders.</p>
            </div>
            <div>
                <span>Private</span>
                <p>Another account never sees your catalogs, categories, or product details.</p>
            </div>
        </div>
    </section>
@endsection
