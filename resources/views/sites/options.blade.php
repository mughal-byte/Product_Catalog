@php
    $canScrape = auth()->user()?->can('scrape.run') ?? false;
    $canDeleteCatalog = auth()->user()?->can('catalogs.delete') ?? false;
    $showOpen = $includeOpen ?? true;
@endphp
@if ($showOpen || $canScrape || $canDeleteCatalog)
    <details class="options">
        <summary>Options</summary>
        <div class="options-panel">
            @if ($showOpen)
                <a href="{{ route('sites.show', $siteHost) }}">Open</a>
            @endif
            @if ($canScrape)
                <a href="{{ route('scrape.create', ['site_url' => 'https://'.$siteHost]) }}">Scrape again</a>
            @endif
            @if ($canDeleteCatalog)
                <form method="post" action="{{ route('sites.destroy', $siteHost) }}" onsubmit="return confirm('Delete {{ $siteHost }} and its products?')">
                    @csrf
                    @method('DELETE')
                    <button type="submit">Delete</button>
                </form>
            @endif
        </div>
    </details>
@endif
