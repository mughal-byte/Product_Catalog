<?php

namespace App\Http\Controllers;

use App\Models\AccountNotice;
use App\Models\NoticeMessage;
use App\Models\User;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\View\View;

class NoticeController extends Controller
{
    public function index(Request $request): JsonResponse
    {
        $user = $request->user();
        $fresh = $user->notifications ? AccountNotice::claimFresh($user->id) : collect();
        $items = AccountNotice::query()->open()->where('user_id', $user->id)->latest()->limit(8)->get();

        return response()->json([
            'on' => (bool) $user->notifications,
            'unread' => AccountNotice::query()->open()->where('user_id', $user->id)->whereNull('read_at')->count(),
            'items' => $items->map(fn (AccountNotice $notice): array => [
                'id' => $notice->id,
                'title' => $notice->title,
                'body' => $notice->body,
                'read' => $notice->read_at !== null,
            ])->values(),
            'fresh' => $fresh->map(fn (AccountNotice $notice): array => [
                'id' => $notice->id,
                'title' => $notice->title,
                'body' => $notice->body,
            ])->values(),
        ]);
    }

    public function read(Request $request, AccountNotice $notice): RedirectResponse
    {
        abort_unless($notice->user_id === $request->user()->id, 404);

        $target = $notice->url;

        $notice->update([
            'read_at' => now(),
            'shown_at' => $notice->shown_at ?? now(),
        ]);

        if (is_string($target) && str_starts_with($target, '/') && ! str_starts_with($target, '//')) {
            return redirect($target);
        }

        return back();
    }

    public function clear(Request $request): JsonResponse|RedirectResponse
    {
        AccountNotice::query()
            ->where('user_id', $request->user()->id)
            ->whereNull('cleared_at')
            ->update([
                'cleared_at' => now(),
                'shown_at' => now(),
            ]);

        if ($request->expectsJson()) {
            return response()->json(['cleared' => true]);
        }

        return back();
    }

    public function compose(): View
    {
        return view('account.notify', [
            'users' => User::query()->orderBy('name')->get(['id', 'name', 'email']),
            'sent' => NoticeMessage::query()->latest()->limit(12)->get(),
        ]);
    }

    public function send(Request $request): RedirectResponse
    {
        $data = $request->validate([
            'title' => ['required', 'string', 'max:80'],
            'body' => ['required', 'string', 'max:240'],
            'audience' => ['required', 'in:all,user'],
            'user_id' => ['required_if:audience,user', 'nullable', 'integer'],
        ]);

        $recipients = $data['audience'] === 'all'
            ? User::query()->pluck('id')
            : collect([(int) $data['user_id']]);

        if ($data['audience'] === 'user' && ! User::query()->whereKey($data['user_id'])->exists()) {
            return back()->withErrors(['user_id' => 'Choose an account.'])->withInput();
        }

        $audience = 'All accounts';

        if ($data['audience'] === 'user') {
            $person = User::query()->find($data['user_id']);
            $audience = $person->name.' · '.$person->email;
        }

        $message = NoticeMessage::query()->create([
            'sender_id' => $request->user()->id,
            'title' => $data['title'],
            'body' => $data['body'],
            'audience' => $audience,
            'recipient_count' => $recipients->count(),
        ]);

        foreach ($recipients as $id) {
            AccountNotice::send((int) $id, 'message', $data['title'], $data['body'], $message->id);
        }

        return redirect()->route('notify')->with('status', 'Notification sent.');
    }

    public function edit(NoticeMessage $message): View
    {
        return view('account.notify-edit', [
            'sent' => $message,
        ]);
    }

    public function update(Request $request, NoticeMessage $message): RedirectResponse
    {
        $data = $request->validate([
            'title' => ['required', 'string', 'max:80'],
            'body' => ['required', 'string', 'max:240'],
        ]);

        $message->update($data);

        AccountNotice::query()->where('message_id', $message->id)->update([
            'title' => $data['title'],
            'body' => $data['body'],
        ]);

        return redirect()->route('notify')->with('status', 'Notification updated.');
    }

    public function destroy(NoticeMessage $message): RedirectResponse
    {
        AccountNotice::query()->where('message_id', $message->id)->delete();
        $message->delete();

        return redirect()->route('notify')->with('status', 'Notification deleted.');
    }
}
