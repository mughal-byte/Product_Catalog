@if ($paginator->hasPages())
    <nav class="filters" style="justify-content: center;">
        @if ($paginator->onFirstPage())
            <span aria-hidden="true">&lt;</span>
        @else
            <a href="{{ $paginator->previousPageUrl() }}" aria-label="Previous page">&lt;</a>
        @endif
        <span>Page {{ $paginator->currentPage() }} of {{ $paginator->lastPage() }}</span>
        @if ($paginator->hasMorePages())
            <a href="{{ $paginator->nextPageUrl() }}" aria-label="Next page">&gt;</a>
        @else
            <span aria-hidden="true">&gt;</span>
        @endif
    </nav>
@endif
