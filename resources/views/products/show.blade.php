@extends('products.layout')

@section('title', $product->product_title)

@section('content')
    <p class="back"><a href="{{ route('sites.show', $product->siteHost()) }}">Back to {{ $product->siteName() }}</a></p>
    <article class="product">
        <div class="gallery" data-gallery>
            @php($images = $product->images())
            @if ($images !== [])
                <div class="hero-frame">
                    @if (count($images) > 1)
                        <button class="gallery-arrow gallery-prev" type="button" aria-label="Previous image">
                            <svg viewBox="0 0 24 24" aria-hidden="true"><path d="M14.5 6 8.5 12l6 6"/></svg>
                        </button>
                    @endif
                    <div class="hero-stage" aria-label="Product image">
                        <img class="hero" src="{{ \App\Models\Product::publicUrl($images[0]) }}" alt="{{ $product->product_title }}" draggable="false">
                    </div>
                    @if (count($images) > 1)
                        <button class="gallery-arrow gallery-next" type="button" aria-label="Next image">
                            <svg viewBox="0 0 24 24" aria-hidden="true"><path d="M9.5 6 15.5 12l-6 6"/></svg>
                        </button>
                    @endif
                    <div class="zoom-controls">
                        <button class="gallery-zoom" type="button" data-zoom="in" aria-label="Zoom in">
                            <svg viewBox="0 0 24 24" aria-hidden="true"><path d="M12 6v12M6 12h12"/></svg>
                        </button>
                        <button class="gallery-zoom" type="button" data-zoom="out" aria-label="Zoom out" disabled>
                            <svg viewBox="0 0 24 24" aria-hidden="true"><path d="M6 12h12"/></svg>
                        </button>
                    </div>
                </div>
                @if (count($images) > 1)
                    <div class="thumbs">
                        @foreach ($images as $image)
                            <button class="thumb {{ $loop->first ? 'is-selected' : '' }}" type="button" data-src="{{ \App\Models\Product::publicUrl($image) }}" aria-label="Image {{ $loop->iteration }}">
                                <img src="{{ \App\Models\Product::publicUrl($image) }}" alt="" draggable="false">
                            </button>
                        @endforeach
                    </div>
                @endif
            @else
                <span class="frame"></span>
            @endif
        </div>
        <div class="detail panel">
            <p class="eyebrow">{{ $product->category }}@if ($product->sub_category) · {{ $product->sub_category }}@endif</p>
            <h2>{{ $product->product_title }}</h2>
            <p class="price">
                @if ($product->hasDiscount())
                    <s>${{ $product->org_price }}</s>
                    <strong>${{ $product->discounted_price }}</strong>
                @elseif ($product->org_price)
                    ${{ $product->org_price }}
                @endif
            </p>
            <p class="label">Product link</p>
            <a class="link-box" href="{{ $product->product_link }}" target="_blank" rel="noopener">{{ $product->product_link }}</a>
            <p class="label">Description</p>
            <div class="copy">{{ $product->description }}</div>
            <p class="label">Policy</p>
            <div class="copy">{{ $product->policy ?: 'No policy on this product.' }}</div>
            @can('products.delete')
                <form method="post" action="{{ route('products.destroy', ['site' => $product->siteHost(), 'product' => $product]) }}" class="product-delete" onsubmit="return confirm('Delete this product?')">
                    @csrf
                    @method('DELETE')
                    <button type="submit">Delete product</button>
                </form>
            @endcan
        </div>
    </article>
    <script>
        document.querySelectorAll('[data-gallery]').forEach((gallery) => {
            const hero = gallery.querySelector('.hero');
            const stage = gallery.querySelector('.hero-stage');
            const thumbs = [...gallery.querySelectorAll('.thumb')];
            const previous = gallery.querySelector('.gallery-prev');
            const next = gallery.querySelector('.gallery-next');
            const zoomIn = gallery.querySelector('[data-zoom="in"]');
            const zoomOut = gallery.querySelector('[data-zoom="out"]');

            if (!hero || !stage) {
                return;
            }

            let index = 0;
            let scale = 1;
            let x = 0;
            let y = 0;
            const min = 1;
            const max = 3;
            const step = 0.5;

            const clampPan = () => {
                const limitX = Math.max(0, (hero.offsetWidth * (scale - 1)) / 2);
                const limitY = Math.max(0, (hero.offsetHeight * (scale - 1)) / 2);
                x = Math.min(limitX, Math.max(-limitX, x));
                y = Math.min(limitY, Math.max(-limitY, y));
            };

            const apply = () => {
                clampPan();
                hero.style.transform = `translate(${x}px, ${y}px) scale(${scale})`;
                stage.classList.toggle('is-zoomed', scale > 1);
                if (zoomIn) zoomIn.disabled = scale >= max;
                if (zoomOut) zoomOut.disabled = scale <= min;
            };

            const setScale = (nextScale) => {
                scale = Math.min(max, Math.max(min, nextScale));
                if (scale === 1) {
                    x = 0;
                    y = 0;
                }
                apply();
            };

            const show = (nextIndex) => {
                if (thumbs.length < 2) {
                    return;
                }
                index = (nextIndex + thumbs.length) % thumbs.length;
                hero.src = thumbs[index].dataset.src;
                thumbs.forEach((thumb, thumbIndex) => thumb.classList.toggle('is-selected', thumbIndex === index));
                setScale(1);
            };

            thumbs.forEach((thumb, thumbIndex) => thumb.addEventListener('click', () => show(thumbIndex)));
            previous?.addEventListener('click', () => show(index - 1));
            next?.addEventListener('click', () => show(index + 1));
            zoomIn?.addEventListener('click', () => setScale(scale + step));
            zoomOut?.addEventListener('click', () => setScale(scale - step));

            stage.addEventListener('wheel', (event) => {
                event.preventDefault();
                setScale(scale + (event.deltaY < 0 ? step : -step));
            }, { passive: false });

            let dragging = false;
            let startX = 0;
            let startY = 0;
            let originX = 0;
            let originY = 0;

            hero.addEventListener('dragstart', (event) => event.preventDefault());
            stage.addEventListener('dragstart', (event) => event.preventDefault());

            stage.addEventListener('pointerdown', (event) => {
                if (scale <= 1 || event.button !== 0) {
                    return;
                }
                event.preventDefault();
                dragging = true;
                startX = event.clientX;
                startY = event.clientY;
                originX = x;
                originY = y;
                hero.style.transition = 'none';
                stage.classList.add('is-dragging');
                stage.setPointerCapture(event.pointerId);
            });

            stage.addEventListener('pointermove', (event) => {
                if (!dragging) {
                    return;
                }
                x = originX + (event.clientX - startX);
                y = originY + (event.clientY - startY);
                apply();
            });

            const stopDrag = () => {
                dragging = false;
                hero.style.transition = '';
                stage.classList.remove('is-dragging');
            };

            stage.addEventListener('pointerup', stopDrag);
            stage.addEventListener('pointercancel', stopDrag);
        });
    </script>
@endsection
