@extends('products.layout')

@section('title', 'Edit notification')

@section('content')
    <p class="back"><a href="{{ route('notify') }}">Notify</a></p>

    <div class="page-head">
        <div>
            <h1>Edit notification</h1>
            <p>{{ $sent->audience }} · {{ $sent->recipient_count }} {{ str('account')->plural($sent->recipient_count) }}</p>
        </div>
    </div>

    <form class="panel notify-form" method="post" action="{{ route('notify.update', $sent) }}">
        @csrf
        @method('PUT')
        <div class="field">
            <label for="title">Title</label>
            <input id="title" name="title" value="{{ old('title', $sent->title) }}" maxlength="80" required>
            @error('title')
                <p class="error">{{ $message }}</p>
            @enderror
        </div>
        <div class="field">
            <label for="body">Message</label>
            <textarea id="body" name="body" maxlength="240" required>{{ old('body', $sent->body) }}</textarea>
            @error('body')
                <p class="error">{{ $message }}</p>
            @enderror
        </div>
        <button type="submit">Save notification</button>
    </form>
@endsection
