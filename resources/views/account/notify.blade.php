@extends('products.layout')

@section('title', 'Notify')

@section('content')
    <div class="page-head">
        <div>
            <h1>Notify</h1>
            <p>Send a notification to one account or every account. It shows in that account's bell.</p>
        </div>
    </div>

    <form class="panel notify-form" method="post" action="{{ route('notify.store') }}">
        @csrf
        <div class="field">
            <label for="title">Title</label>
            <input id="title" name="title" value="{{ old('title') }}" maxlength="80" required>
            @error('title')
                <p class="error">{{ $message }}</p>
            @enderror
        </div>
        <div class="field">
            <label for="body">Message</label>
            <textarea id="body" name="body" maxlength="240" required>{{ old('body') }}</textarea>
            @error('body')
                <p class="error">{{ $message }}</p>
            @enderror
        </div>
        <div class="field">
            <label for="audience">Send to</label>
            <select id="audience" name="audience">
                <option value="all" @selected(old('audience', 'all') === 'all')>All accounts</option>
                <option value="user" @selected(old('audience') === 'user')>One account</option>
            </select>
        </div>
        <div class="field" id="notify-account" @if (old('audience') !== 'user') hidden @endif>
            <label for="user_id">Account</label>
            <select id="user_id" name="user_id">
                @foreach ($users as $person)
                    <option value="{{ $person->id }}" @selected((string) old('user_id') === (string) $person->id)>{{ $person->name }} · {{ $person->email }}</option>
                @endforeach
            </select>
            @error('user_id')
                <p class="error">{{ $message }}</p>
            @enderror
        </div>
        <button type="submit">Send notification</button>
    </form>

    <section class="panel notify-sent">
        @forelse ($sent as $message)
            <article>
                <div>
                    <h2>{{ $message->title }}</h2>
                    <p>{{ $message->body }}</p>
                    <p>{{ $message->audience }} · {{ $message->recipient_count }} {{ str('account')->plural($message->recipient_count) }}</p>
                </div>
                <div class="row-actions">
                    <a class="btn btn-quiet" href="{{ route('notify.edit', $message) }}">Edit</a>
                    <form method="post" action="{{ route('notify.destroy', $message) }}" onsubmit="return confirm('Delete this notification?')">
                        @csrf
                        @method('DELETE')
                        <button class="btn-danger" type="submit">Delete</button>
                    </form>
                </div>
            </article>
        @empty
            <article>
                <p>No notifications sent yet.</p>
            </article>
        @endforelse
    </section>

    <script>
        document.getElementById('audience').addEventListener('change', (event) => {
            document.getElementById('notify-account').hidden = event.target.value !== 'user';
        });
    </script>
@endsection
