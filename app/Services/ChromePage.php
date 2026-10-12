<?php

namespace App\Services;

use Illuminate\Support\Facades\File;
use RuntimeException;
use Symfony\Component\Process\Process;
use Throwable;

class ChromePage
{
    private ?Process $process = null;

    /** @var resource|null */
    private $socket = null;

    private string $buffer = '';

    private int $messageId = 0;

    public function html(string $url): string
    {
        $pages = $this->renderMany([$url]);
        $html = $pages[array_key_first($pages)] ?? '';

        if ($this->challenge($html)) {
            throw new RuntimeException('The site blocked the catalog request. Open the category link again from the Scrape page.');
        }

        return $html;
    }

    /**
     * Each address opens in its own Chrome window. A reused window is sent to the verification page.
     *
     * @param  array<int|string, string>  $urls
     * @return array<int|string, string>
     */
    public function renderMany(array $urls): array
    {
        $html = [];

        foreach (array_chunk($urls, 4, true) as $chunk) {
            $jobs = [];

            foreach ($chunk as $key => $url) {
                $profile = storage_path('app/chrome-dumps/'.bin2hex(random_bytes(8)));
                File::ensureDirectoryExists($profile);
                $process = new Process([
                    '/usr/bin/google-chrome',
                    '--headless=new',
                    '--no-sandbox',
                    '--disable-gpu',
                    '--disable-dev-shm-usage',
                    '--disable-blink-features=AutomationControlled',
                    '--user-data-dir='.$profile,
                    '--user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36',
                    '--virtual-time-budget=8000',
                    '--dump-dom',
                    $url,
                ]);
                $process->setTimeout(50);
                $process->start();
                $jobs[$key] = [$process, $profile];
            }

            foreach ($jobs as $key => [$process, $profile]) {
                try {
                    $process->wait();
                    $html[$key] = $process->getOutput();
                } catch (Throwable) {
                    $html[$key] = '';
                } finally {
                    File::deleteDirectory($profile);
                }
            }
        }

        return $html;
    }

    public function cookieHeader(): string
    {
        if (! $this->process?->isRunning() || ! is_resource($this->socket)) {
            return '';
        }
        $message = $this->command('Network.getCookies', [
            'urls' => ['https://www.foagroup.com/', 'https://www.nydiamondusa.com/'],
        ]);
        $pairs = [];

        foreach ($message['result']['cookies'] ?? [] as $cookie) {
            $name = $cookie['name'] ?? '';

            if (in_array($name, ['aws-waf-token', 'frontend'], true) && is_string($cookie['value'] ?? null)) {
                $pairs[] = $name.'='.$cookie['value'];
            }
        }

        return implode('; ', $pairs);
    }

    public function close(): void
    {
        if (is_resource($this->socket)) {
            fclose($this->socket);
        }

        $this->socket = null;
        $this->buffer = '';
        $this->process?->stop(1);
        $this->process = null;
    }

    public function __destruct()
    {
        $this->close();
    }

    private function load(string $url): string
    {
        $this->ensureStarted();
        $this->command('Page.navigate', ['url' => $url]);

        $deadline = microtime(true) + 20;
        $blockedTicks = 0;

        while (microtime(true) < $deadline) {
            $state = $this->evaluate(<<<'JS'
                (function () {
                    var title = document.title || '';
                    var ready = document.querySelector('li.grid_3, .short-description');
                    var blocked = title.indexOf('Human Verification') !== -1 || title.indexOf('403') !== -1;

                    if (ready && !blocked) {
                        return 'ready';
                    }

                    return blocked ? 'blocked' : 'wait';
                })()
            JS);

            if ($state === 'ready') {
                $html = $this->evaluate('document.documentElement.outerHTML');

                if (is_string($html) && strlen($html) > 1000) {
                    return $html;
                }
            }

            if ($state === 'blocked') {
                $blockedTicks++;

                if ($blockedTicks >= 2) {
                    break;
                }
            }

            usleep(250000);
        }

        throw new RuntimeException('The site blocked the catalog request. Open the category link again from the Scrape page.');
    }

    private function challenge(string $html): bool
    {
        return strlen($html) < 1000
            || str_contains($html, '<title>403 Forbidden</title>')
            || str_contains($html, '<title>Human Verification</title>');
    }

    private function ensureStarted(): void
    {
        if ($this->process?->isRunning() && is_resource($this->socket)) {
            return;
        }

        $this->close();

        $binary = '/usr/bin/google-chrome';

        if (! is_file($binary)) {
            throw new RuntimeException('Chrome is not available, so this site page could not be opened.');
        }

        $profile = $this->profile();
        File::ensureDirectoryExists($profile);
        File::delete(
            $profile.'/SingletonLock',
            $profile.'/SingletonSocket',
            $profile.'/SingletonCookie',
            $profile.'/DevToolsActivePort',
        );

        $this->process = new Process([
            $binary,
            '--headless=new',
            '--no-sandbox',
            '--disable-gpu',
            '--disable-dev-shm-usage',
            '--disable-blink-features=AutomationControlled',
            '--no-first-run',
            '--no-default-browser-check',
            '--user-data-dir='.$profile,
            '--remote-debugging-port=0',
            '--user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36',
            '--window-size=1366,900',
            'about:blank',
        ]);
        $this->process->disableOutput();
        $this->process->start();

        $port = $this->debuggingPort($profile);
        $pages = $this->json('http://127.0.0.1:'.$port.'/json/list');
        $socketUrl = $pages[0]['webSocketDebuggerUrl'] ?? null;

        if (! is_string($socketUrl) || $socketUrl === '') {
            throw new RuntimeException('Chrome did not open a page session.');
        }

        $this->connect($socketUrl);
    }

    private function seed(string $url): void
    {
        $binary = '/usr/bin/google-chrome';
        $profile = $this->profile();
        File::ensureDirectoryExists($profile);
        File::delete($profile.'/SingletonLock', $profile.'/SingletonSocket', $profile.'/SingletonCookie');

        $process = new Process([
            $binary,
            '--headless=new',
            '--no-sandbox',
            '--disable-gpu',
            '--disable-dev-shm-usage',
            '--disable-blink-features=AutomationControlled',
            '--user-data-dir='.$profile,
            '--user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36',
            '--virtual-time-budget=8000',
            '--dump-dom',
            $url,
        ]);
        $process->setTimeout(40);
        $process->run();
    }

    private function debuggingPort(string $profile): int
    {
        $file = $profile.'/DevToolsActivePort';
        $deadline = microtime(true) + 15;

        while (microtime(true) < $deadline) {
            if (is_file($file)) {
                $port = (int) strtok((string) file_get_contents($file), "\n");

                if ($port > 0) {
                    return $port;
                }
            }

            if (! $this->process?->isRunning()) {
                break;
            }

            usleep(100000);
        }

        throw new RuntimeException('Chrome did not start a debugging port.');
    }

    /**
     * @return list<array<string, mixed>>
     */
    private function json(string $url): array
    {
        $deadline = microtime(true) + 10;

        while (microtime(true) < $deadline) {
            $body = @file_get_contents($url);

            if (is_string($body) && $body !== '') {
                $decoded = json_decode($body, true);

                if (is_array($decoded)) {
                    return $decoded;
                }
            }

            usleep(100000);
        }

        throw new RuntimeException('Chrome did not open a page session.');
    }

    private function connect(string $wsUrl): void
    {
        $parts = parse_url($wsUrl);
        $host = $parts['host'] ?? '127.0.0.1';
        $port = (int) ($parts['port'] ?? 80);
        $path = $parts['path'] ?? '/';
        $socket = stream_socket_client('tcp://'.$host.':'.$port, $errno, $error, 10);

        if ($socket === false) {
            throw new RuntimeException('Chrome did not open a page session.');
        }

        stream_set_timeout($socket, 20);
        $key = base64_encode(random_bytes(16));
        fwrite($socket, "GET {$path} HTTP/1.1\r\nHost: {$host}:{$port}\r\nUpgrade: websocket\r\nConnection: Upgrade\r\nSec-WebSocket-Key: {$key}\r\nSec-WebSocket-Version: 13\r\n\r\n");

        $headers = '';

        while (! str_contains($headers, "\r\n\r\n")) {
            $chunk = fread($socket, 1024);

            if ($chunk === false || $chunk === '') {
                throw new RuntimeException('Chrome did not open a page session.');
            }

            $headers .= $chunk;
        }

        $this->socket = $socket;
        $this->buffer = '';
    }

    /**
     * @param  array<string, mixed>  $params
     * @return array<string, mixed>
     */
    private function command(string $method, array $params = []): array
    {
        $id = ++$this->messageId;
        $this->writeFrame((string) json_encode([
            'id' => $id,
            'method' => $method,
            'params' => (object) $params,
        ]));

        $deadline = microtime(true) + 25;

        while (microtime(true) < $deadline) {
            $message = json_decode($this->readFrame(), true);

            if (is_array($message) && ($message['id'] ?? null) === $id) {
                return $message;
            }
        }

        throw new RuntimeException('Chrome stopped responding.');
    }

    private function evaluate(string $expression): mixed
    {
        $message = $this->command('Runtime.evaluate', [
            'expression' => $expression,
            'returnByValue' => true,
        ]);

        return $message['result']['result']['value'] ?? null;
    }

    private function writeFrame(string $payload): void
    {
        $mask = random_bytes(4);
        $length = strlen($payload);
        $frame = chr(0x81);

        if ($length < 126) {
            $frame .= chr(0x80 | $length);
        } elseif ($length < 65536) {
            $frame .= chr(0x80 | 126).pack('n', $length);
        } else {
            $frame .= chr(0x80 | 127).pack('J', $length);
        }

        $frame .= $mask;

        for ($i = 0; $i < $length; $i++) {
            $frame .= $payload[$i] ^ $mask[$i % 4];
        }

        $written = fwrite($this->socket, $frame);

        if ($written === false) {
            throw new RuntimeException('Chrome stopped responding.');
        }
    }

    private function readFrame(): string
    {
        $payload = '';

        while (true) {
            $header = $this->readBytes(2);
            $opcode = ord($header[0]) & 0x0F;
            $length = ord($header[1]) & 0x7F;
            $final = (ord($header[0]) & 0x80) === 0x80;

            if ($length === 126) {
                $length = unpack('n', $this->readBytes(2))[1];
            } elseif ($length === 127) {
                $length = unpack('J', $this->readBytes(8))[1];
            }

            $chunk = $length > 0 ? $this->readBytes($length) : '';

            if ($opcode === 9) {
                $this->writeControl(10, $chunk);

                continue;
            }

            if ($opcode === 8) {
                throw new RuntimeException('Chrome closed the page connection.');
            }

            if ($opcode === 1 || $opcode === 0) {
                $payload .= $chunk;

                if ($final) {
                    return $payload;
                }
            }
        }
    }

    private function writeControl(int $opcode, string $payload): void
    {
        $mask = random_bytes(4);
        $frame = chr(0x80 | $opcode).chr(0x80 | strlen($payload)).$mask;

        for ($i = 0; $i < strlen($payload); $i++) {
            $frame .= $payload[$i] ^ $mask[$i % 4];
        }

        fwrite($this->socket, $frame);
    }

    private function readBytes(int $length): string
    {
        while (strlen($this->buffer) < $length) {
            $chunk = fread($this->socket, max(8192, $length - strlen($this->buffer)));

            if ($chunk === false || $chunk === '') {
                throw new RuntimeException('Chrome closed the page connection.');
            }

            $this->buffer .= $chunk;
        }

        $bytes = substr($this->buffer, 0, $length);
        $this->buffer = substr($this->buffer, $length);

        return $bytes;
    }

    private function profile(): string
    {
        return storage_path('app/chrome-profile');
    }
}
