@extends('products.layout')

@section('title', 'Scrape status')

@if ($run->isActive())
    @push('head')
        <meta http-equiv="refresh" content="5">
    @endpush
@endif

@section('content')
    <p class="back"><a href="{{ route('scrape.create') }}">New scrape</a></p>
    <article class="panel detail">
        <p class="eyebrow">
            @if (in_array($run->status, ['running', 'queued', 'hold'], true))
                <form method="post" action="{{ route('scrape.stop', $run) }}" class="stop">
                    @csrf
                    <span class="loader" role="status" aria-hidden="true"></span>
                    <button type="submit" aria-label="Stop"><i></i></button>
                </form>
            @elseif (in_array($run->status, ['stopped', 'failed'], true))
                <form method="post" action="{{ route('scrape.restart', $run) }}" class="stop restart">
                    @csrf
                    <button type="submit" aria-label="Restart">
                        <svg viewBox="0 0 16 16" aria-hidden="true"><path d="M13.2 8a5.2 5.2 0 1 1-1.4-3.5"/><path d="M12.2 1.8v3.4H8.8"/></svg>
                    </button>
                </form>
            @else
                <span class="pill pill-{{ $run->status }}">{{ $run->status }}</span>
            @endif
        </p>
        @if (in_array($run->status, ['queued', 'hold'], true))
            <p class="stat">Next</p>
            <h2>this category is in line</h2>
            @if ($active)
                <p class="copy">The current scrape has saved {{ $active->saved_count }} products. This link starts as soon as that category finishes, in the same site folders.</p>
            @endif
        @elseif ($run->status === 'failed')
            <p class="stat">Error</p>
            <h2>{{ $run->message }}</h2>
        @elseif ($run->status === 'stopped')
            <p class="stat">Stopped</p>
            <h2>this category was stopped</h2>
        @else
            <p class="stat">{{ $run->saved_count }}</p>
            <h2>products checked</h2>
        @endif
        <p class="label">Site link</p>
        <a class="link-box" href="{{ $run->site_url }}" target="_blank" rel="noopener">{{ $run->site_url }}</a>
        <p class="label">Prompt</p>
        <div class="copy">{{ $run->prompt }}</div>
        <p class="label">Status</p>
        <div class="copy">{{ $run->message }}</div>
        @if ($siteHost)
            <p><a class="btn" href="{{ route('sites.show', $siteHost) }}" style="margin-top: 16px; padding: 12px 16px;">Open {{ $siteHost }}</a></p>
        @endif
    </article>
@endsection
