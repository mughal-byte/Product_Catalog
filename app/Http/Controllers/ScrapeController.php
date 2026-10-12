<?php

namespace App\Http\Controllers;

use App\Models\AccountNotice;
use App\Models\Product;
use App\Models\ScrapeRun;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\View\View;

class ScrapeController extends Controller
{
    public function create(): View
    {
        return view('scrape.create', [
            'runs' => ScrapeRun::query()
                ->forViewer()
                ->orderByRaw("case status when 'running' then 0 when 'queued' then 1 when 'hold' then 2 else 3 end")
                ->latest('id')
                ->limit(8)
                ->get(),
        ]);
    }

    public function store(Request $request): RedirectResponse
    {
        $request->merge([
            'site_url' => Product::normalizeSiteUrl((string) $request->input('site_url')),
        ]);

        $data = $request->validate([
            'site_url' => ['required', 'url', 'regex:/^https?:\/\//i'],
            'prompt' => ['required', 'string', 'max:2000'],
        ]);

        $host = Product::hostFromLink($data['site_url']);

        if (! is_string($host) || ! $request->user()->canAddCatalog($host)) {
            $limit = $request->user()->catalogLimit();

            $message = $request->user()->planKey() === 'none'
                ? 'Without a subscription, this account can use 2 catalogs.'
                : 'This plan includes '.$limit.' catalogs. Use a site you already have, or a larger plan.';

            return back()->withInput()->withErrors([
                'site_url' => $message,
            ]);
        }

        $busy = ScrapeRun::query()->whereIn('status', ['running', 'queued'])->exists();

        $run = ScrapeRun::query()->create([
            'user_id' => $request->user()->id,
            'site_url' => $data['site_url'],
            'prompt' => $data['prompt'],
            'status' => $busy ? 'queued' : 'running',
            'saved_count' => 0,
            'message' => $busy
                ? 'Queued. This category starts when the current scrape finishes, in the same site folders.'
                : 'Starting scrape.',
        ]);

        if (! $busy) {
            $this->launch($run);
        }

        return redirect()->route('scrape.show', $run);
    }

    public function stop(ScrapeRun $run): RedirectResponse
    {
        $this->owned($run);

        if (! in_array($run->status, ['running', 'queued', 'hold'], true)) {
            return back();
        }

        $wasRunning = $run->status === 'running';

        if ($wasRunning) {
            $this->endProcess($run->id);
        }

        $run->update([
            'status' => 'stopped',
            'message' => 'Stopped.',
        ]);

        AccountNotice::forScrape(
            $run->user_id,
            Product::hostFromLink($run->site_url) ?: 'catalog',
            'stopped',
            0,
            0,
            'Stopped.',
            $run->id,
        );

        if ($wasRunning) {
            $this->startNext();
        }

        return back();
    }

    public function restart(ScrapeRun $run): RedirectResponse
    {
        $this->owned($run);

        if (! in_array($run->status, ['stopped', 'failed'], true)) {
            return back();
        }

        $busy = ScrapeRun::query()->where('status', 'running')->exists();

        $run->update([
            'status' => $busy ? 'queued' : 'running',
            'saved_count' => 0,
            'message' => $busy
                ? 'Queued. This category starts when the current scrape finishes, in the same site folders.'
                : 'Starting scrape.',
        ]);

        if (! $busy) {
            $this->launch($run);
        }

        return back();
    }

    public function rescrape(Request $request, string $site): RedirectResponse
    {
        $site = strtolower($site);
        $url = Product::normalizeSiteUrl((string) $request->input('site_url'));
        abort_unless(Product::hostFromLink($url) === $site, 404);

        $key = Product::categoryKey($url);
        $run = ScrapeRun::query()->forViewer()->latest('id')->get()->first(
            fn (ScrapeRun $run): bool => Product::categoryKey($run->site_url) === $key
        );

        abort_unless($run instanceof ScrapeRun, 404);

        if (in_array($run->status, ['running', 'queued', 'hold'], true)) {
            return redirect()->route('scrape.show', $run);
        }

        $busy = ScrapeRun::query()->where('status', 'running')->exists();

        $run->update([
            'status' => $busy ? 'queued' : 'running',
            'saved_count' => 0,
            'message' => $busy
                ? 'Queued. This category starts when the current scrape finishes, in the same site folders.'
                : 'Starting scrape.',
        ]);

        if (! $busy) {
            $this->launch($run);
        }

        return redirect()->route('scrape.show', $run);
    }

    public function show(ScrapeRun $run): View
    {
        $this->owned($run);

        return view('scrape.show', [
            'run' => $run,
            'siteHost' => Product::hostFromLink($run->site_url),
            'active' => ScrapeRun::query()
                ->forViewer()
                ->where('status', 'running')
                ->whereKeyNot($run->id)
                ->first(),
        ]);
    }

    private function owned(ScrapeRun $run): void
    {
        abort_unless((int) $run->user_id === (int) auth()->id(), 404);
    }

    private function endProcess(int $runId): void
    {
        $lines = [];
        exec('ps -eo pid=,args=', $lines);

        foreach ($lines as $line) {
            if (! preg_match('/^\s*(\d+)\s/', $line, $match)) {
                continue;
            }

            if (! str_contains($line, 'products:scrape') || ! preg_match('/--run='.$runId.'(\s|$)/', $line)) {
                continue;
            }

            $this->killTree((int) $match[1]);
        }
    }

    private function killTree(int $pid): void
    {
        if ($pid <= 0) {
            return;
        }

        $children = [];
        exec('ps -eo pid=,ppid= | awk \'$2 == '.$pid.' { print $1 }\'', $children);

        foreach ($children as $child) {
            $this->killTree((int) $child);
        }

        exec('kill -9 '.$pid.' 2>/dev/null');
    }

    private function startNext(): void
    {
        if (ScrapeRun::query()->where('status', 'running')->exists()) {
            return;
        }

        $next = ScrapeRun::query()->where('status', 'queued')->latest('id')->first()
            ?? ScrapeRun::query()->where('status', 'hold')->oldest('id')->first();

        if ($next === null) {
            return;
        }

        $next->update([
            'status' => 'running',
            'message' => 'Starting scrape.',
        ]);

        $this->launch($next);
    }

    private function launch(ScrapeRun $run): void
    {
        $log = storage_path('logs/scrape-'.$run->id.'.log');
        $command = sprintf(
            'nohup %s %s products:scrape %s --prompt=%s --run=%d > %s 2>&1 &',
            escapeshellarg(PHP_BINARY),
            escapeshellarg(base_path('artisan')),
            escapeshellarg($run->site_url),
            escapeshellarg((string) $run->prompt),
            $run->id,
            escapeshellarg($log),
        );

        exec($command);
    }
}
