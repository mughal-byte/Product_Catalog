<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\ScrapeRun;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\File;
use Illuminate\View\View;

class ProductController extends Controller
{
    public function home(): View
    {
        Product::relocateSharedProducts();

        $sites = collect(Product::catalogHosts())->map(function (string $host) {
            return (object) [
                'site_host' => $host,
                'site_name' => $host,
                'products_count' => Product::visible($host)->count(),
            ];
        })->filter(fn (object $site): bool => $site->products_count > 0)->values();

        $known = $sites->pluck('site_host');

        foreach (ScrapeRun::query()->forViewer()->latest()->get() as $run) {
            $host = Product::hostFromLink($run->site_url);

            if ($host === null || $known->contains($host)) {
                continue;
            }

            $sites->push((object) [
                'site_host' => $host,
                'site_name' => $host,
                'products_count' => 0,
            ]);
            $known->push($host);
        }

        $covers = collect();
        $categoryCounts = collect();

        foreach ($sites as $site) {
            if ((int) $site->products_count === 0) {
                $covers[$site->site_host] = null;
                $categoryCounts[$site->site_host] = 0;

                continue;
            }

            $rows = Product::visible($site->site_host)->get(['image1', 'sub_category']);
            $covers[$site->site_host] = $rows->first(fn (Product $product): bool => filled($product->image1));
            $categoryCounts[$site->site_host] = $rows
                ->pluck('sub_category')
                ->filter()
                ->flatMap(fn (string $value) => explode(' | ', $value))
                ->map(fn (string $value) => trim($value))
                ->filter()
                ->unique()
                ->count();
        }

        $sites = $sites->map(function (object $site) use ($covers, $categoryCounts) {
            $site->cover = $covers[$site->site_host]?->image1;
            $site->categories_count = (int) ($categoryCounts[$site->site_host] ?? 0);

            return $site;
        });

        return view('sites.index', [
            'sites' => $sites->sortBy('site_name')->values(),
        ]);
    }

    public function index(Request $request, string $site): View
    {
        Product::relocateSharedProducts();

        $site = strtolower($site);
        $ownsProducts = in_array($site, Product::catalogHosts(), true) && Product::visible($site)->exists();
        $ownsRun = ScrapeRun::query()->forViewer()->latest()->get()->contains(
            fn (ScrapeRun $run): bool => Product::hostFromLink($run->site_url) === $site
        );

        abort_unless($ownsProducts || $ownsRun, 404);

        $search = $request->string('q')->toString();
        $card = $request->string('card')->toString();
        [$categoryGroups, $cardOptions] = $this->categoryGroups($site);
        $selected = $cardOptions->firstWhere('key', $card);
        $listing = null;
        $listingTitle = null;
        $categoryUrl = null;
        $categoryPrompt = null;
        $categoryActive = false;
        $categoryRunId = null;
        $showListing = $request->exists('card') || $search !== '';

        if ($showListing && ($card === '' || $card === 'all')) {
            $listingTitle = 'All categories';
            $listing = $this->paginateCard(
                $this->matchingProducts($cardOptions->flatMap(fn (object $item) => $item->items), $search),
                max(1, $request->integer('page', 1)),
            );
        } elseif ($selected instanceof \stdClass) {
            $listingTitle = $selected->group.' / '.$selected->name;
            $listing = $this->paginateCard($this->matchingProducts($selected->items, $search), max(1, $request->integer('page', 1)));
            $categoryUrl = $selected->url ?: 'https://'.$site.'/';
            $categoryActive = (bool) $selected->active;
            $categoryRunId = $selected->run_id;
            $categoryPrompt = 'Scrape more products in '.$selected->name.'. Save images, prices, description, and policy in this category.';
        }

        return view('products.index', [
            'categoryGroups' => $categoryGroups,
            'cardOptions' => $cardOptions,
            'card' => $card,
            'search' => $search,
            'listing' => $listing,
            'listingTitle' => $listingTitle,
            'categoryUrl' => $categoryUrl,
            'categoryPrompt' => $categoryPrompt,
            'categoryActive' => $categoryActive,
            'categoryRunId' => $categoryRunId,
            'total' => in_array($site, Product::catalogHosts(), true) ? Product::visible($site)->count() : 0,
            'site' => $site,
            'siteName' => $site,
        ]);
    }

    /**
     * @return array{0: Collection<string, Collection<int, object>>, 1: Collection<int, object>}
     */
    private function categoryGroups(string $site): array
    {
        $products = (in_array($site, Product::catalogHosts(), true)
            ? Product::visible($site)
            : Product::query()->whereRaw('1 = 0'))
            ->orderBy('product_title')
            ->get(['id', 'product_title', 'image1', 'org_price', 'discounted_price', 'category', 'sub_category']);

        $groupedProducts = $products->groupBy(
            fn (Product $product): string => ($product->category ?: 'Catalog').'|'.($product->sub_category ?: $product->category ?: 'Catalog')
        );

        $cards = [];

        foreach ($groupedProducts as $key => $rows) {
            [$group, $name] = explode('|', $key, 2);
            $cards[$key] = $this->categoryCard($group, $name, $rows);
        }

        foreach ($this->latestCategoryRuns($site) as $run) {
            [$group, $subCategory] = Product::categoryNames($run->site_url);
            $name = $subCategory ?: $group;
            $key = $group.'|'.$name;
            $cards[$key] ??= $this->categoryCard($group, $name, collect());
            $cards[$key]->url = $run->site_url;
            $cards[$key]->status = $run->status;
            $cards[$key]->active = in_array($run->status, ['running', 'queued', 'hold'], true);
            $cards[$key]->run_id = $run->id;
        }

        $options = collect($cards)
            ->sortBy(fn (object $card): string => $card->group.'-'.$card->name)
            ->values();

        $groups = $options
            ->sortBy(fn (object $card): string => $card->group.'-'.($card->products === 0 ? '1' : '0').'-'.$card->name)
            ->groupBy('group');

        return [$groups, $options];
    }

    /**
     * @param  Collection<int, Product>  $products
     */
    private function categoryCard(string $group, string $name, Collection $products): object
    {
        return (object) [
            'key' => $group.'|'.$name,
            'group' => $group,
            'name' => $name,
            'url' => null,
            'status' => null,
            'active' => false,
            'run_id' => null,
            'products' => $products->count(),
            'cover' => $products->first(fn (Product $product): bool => filled($product->image1))?->image1,
            'items' => $products,
            'preview' => $products->take(8),
            'open' => false,
            'page' => null,
        ];
    }

    /**
     * @param  Collection<int, Product>  $products
     * @return Collection<int, Product>
     */
    private function matchingProducts(Collection $products, string $search): Collection
    {
        $products = $products->unique('id')->sortBy('product_title')->values();

        if ($search === '') {
            return $products;
        }

        $needle = mb_strtolower($search);

        return $products
            ->filter(fn (Product $product): bool => str_contains(mb_strtolower((string) $product->product_title), $needle))
            ->values();
    }

    /**
     * @param  Collection<int, Product>  $products
     */
    private function paginateCard(Collection $products, int $page): LengthAwarePaginator
    {
        return (new LengthAwarePaginator(
            $products->forPage($page, 24)->values(),
            $products->count(),
            24,
            $page,
            ['path' => request()->url(), 'query' => request()->query()],
        ))->fragment('products');
    }

    /**
     * @return Collection<string, ScrapeRun>
     */
    private function latestCategoryRuns(string $site): Collection
    {
        $latest = [];

        foreach (ScrapeRun::query()->forViewer()->latest('id')->get() as $run) {
            if (Product::hostFromLink($run->site_url) !== $site) {
                continue;
            }

            $key = Product::categoryKey($run->site_url);
            $latest[$key] ??= $run;
        }

        $specific = array_filter($latest, fn (ScrapeRun $run): bool => ! str_ends_with(Product::categoryKey($run->site_url), '|/'));

        return collect($specific !== [] ? $specific : $latest);
    }

    public function show(string $site, int $product): View
    {
        return view('products.show', [
            'product' => Product::locate($site, $product, true) ?? abort(404),
        ]);
    }

    public function destroy(string $site, int $product): RedirectResponse
    {
        $product = Product::locate($site, $product, true) ?? abort(404);
        $site = $product->siteHost();
        $this->deleteStoredImages($product);
        $product->delete();

        $mineLeft = Product::visible($site)->exists();
        $anyoneLeft = Product::forHost($site)->exists();

        if (! $anyoneLeft) {
            Product::dropHost($site);
        }

        return $mineLeft
            ? redirect()->route('sites.show', $site)
            : redirect()->route('sites.index');
    }

    public function destroySite(string $site): RedirectResponse
    {
        $site = strtolower($site);

        if (in_array($site, Product::catalogHosts(), true)) {
            foreach (Product::tablesForHost($site) as $table) {
                Product::onTable($site, $table)->where('user_id', auth()->id())->orderBy('id')->chunkById(100, function ($products): void {
                    foreach ($products as $product) {
                        $this->deleteStoredImages($product);
                        $product->delete();
                    }
                });
            }

            if (! Product::forHost($site)->exists()) {
                Product::dropHost($site);

                $root = public_path(Product::imageRootForHost($site));

                if (is_dir($root)) {
                    File::deleteDirectory($root);
                }
            }
        }

        ScrapeRun::query()->forViewer()->orderBy('id')->chunkById(100, function ($runs) use ($site): void {
            foreach ($runs as $run) {
                if (Product::hostFromLink($run->site_url) === $site) {
                    $run->delete();
                }
            }
        });

        return redirect()->route('sites.index');
    }

    private function deleteStoredImages(Product $product): void
    {
        foreach ($product->images() as $path) {
            if (! str_starts_with($path, 'Images/')) {
                continue;
            }

            $absolute = public_path($path);

            if (is_file($absolute) && ! $this->imageStillUsed($path, $product)) {
                File::delete($absolute);
            }

            $folder = dirname($absolute);

            if (is_dir($folder) && File::files($folder) === [] && File::directories($folder) === []) {
                File::deleteDirectory($folder);
            }
        }
    }

    private function imageStillUsed(string $path, Product $except): bool
    {
        foreach (Product::catalogHosts() as $host) {
            foreach (Product::tablesForHost($host) as $table) {
                $query = Product::onTable($host, $table)->where(function ($query) use ($path): void {
                    foreach (['image1', 'image2', 'image3', 'image4', 'image5'] as $column) {
                        $query->orWhere($column, $path);
                    }
                });

                if ($except->getTable() === $table) {
                    $query->whereKeyNot($except->getKey());
                }

                if ($query->exists()) {
                    return true;
                }
            }
        }

        return false;
    }
}
