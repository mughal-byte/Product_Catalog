@extends('products.layout')

@section('title', 'Scrape')

@section('content')
    <div class="page-head">
        <div>
            <h1>Scrape</h1>
            <p>Paste a store link and describe what to collect.</p>
        </div>
    </div>

    <div class="layout-2">
        <form class="scrape panel" method="post" action="{{ route('scrape.store') }}">
            @csrf
            <div class="field">
                <label for="site_url">Site link</label>
                <input id="site_url" type="url" name="site_url" value="{{ old('site_url', request('site_url', 'https://www.nydiamondusa.com/')) }}" placeholder="https://www.amazon.com/" required onfocus="this.select()">
                @error('site_url')
                    <p class="error">{{ $message }}</p>
                @enderror
            </div>

            <div class="field">
                <label for="prompt">Prompt</label>
                <textarea id="prompt" name="prompt" rows="6" required placeholder="Dealer Products ki sari categories scrape karo. Har product ki images, price, description aur policy chahiye.">{{ old('prompt') }}</textarea>
                <small>Same site ka naya category link, jaise Nightstand, usi site page par alag category banta hai. Wahi link dobara chalao to products usi folder mein update hote hain.</small>
                @error('prompt')
                    <p class="error">{{ $message }}</p>
                @enderror
            </div>

            <button type="submit">Start scrape</button>
        </form>

        <aside class="note panel">
            <h2>What gets saved</h2>
            <ol>
                <li>Category, title, and product link</li>
                <li>Up to five images, saved under that site</li>
                <li>A page named after the site, with its products</li>
                <li>Description, both prices, and policy</li>
            </ol>
        </aside>
    </div>

    @if ($runs->isNotEmpty())
        <h2 style="margin-top: 28px;">Recent scrapes</h2>
        <ul class="runs">
            @foreach ($runs as $run)
                <li>
                    <a href="{{ route('scrape.show', $run) }}">
                        <div>
                            <strong>
                                @if ($run->status === 'hold')
                                    In line
                                @elseif ($run->status === 'failed')
                                    Error
                                @elseif ($run->status === 'stopped')
                                    Stopped
                                @else
                                    {{ $run->saved_count }} products
                                @endif
                            </strong>
                            <span>{{ $run->site_url }}</span>
                        </div>
                    </a>
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
                </li>
            @endforeach
        </ul>
    @endif
@endsection
