@extends('products.layout')

@section('title', $user->exists ? 'Edit user' : 'Add user')

@section('content')
    <p class="back"><a href="{{ route('users.index') }}">Users</a></p>
    <form class="auth-card panel" method="post" action="{{ $user->exists ? route('users.update', $user) : route('users.store') }}">
        @csrf
        @if ($user->exists)
            @method('PUT')
        @endif
        <h1>{{ $user->exists ? 'Edit user' : 'Add user' }}</h1>

        <div class="field">
            <label for="name">Name</label>
            <input id="name" name="name" value="{{ old('name', $user->name) }}" required>
            @error('name')
                <p class="error">{{ $message }}</p>
            @enderror
        </div>

        <div class="field">
            <label for="email">Email</label>
            <input id="email" type="email" name="email" value="{{ old('email', $user->email) }}" required>
            @error('email')
                <p class="error">{{ $message }}</p>
            @enderror
        </div>

        @include('auth.password-field', [
            'name' => 'password',
            'label' => 'Password',
            'required' => ! $user->exists,
            'autocomplete' => 'new-password',
            'hint' => $user->exists ? 'Leave this empty to keep the current password.' : null,
        ])

        @include('auth.password-field', [
            'name' => 'password_confirmation',
            'label' => 'Confirm password',
            'required' => false,
            'autocomplete' => 'new-password',
        ])

        <div class="field">
            <label for="role_id">Role</label>
            <select id="role_id" name="role_id" required>
                @foreach ($roles as $role)
                    <option value="{{ $role->id }}" @selected((string) old('role_id', $user->role_id) === (string) $role->id)>{{ $role->name }}</option>
                @endforeach
            </select>
            @error('role_id')
                <p class="error">{{ $message }}</p>
            @enderror
        </div>

        <ul class="role-notes">
            @foreach ($roles as $role)
                <li><strong>{{ $role->name }}.</strong> {{ $role->description }}</li>
            @endforeach
        </ul>

        <button type="submit">{{ $user->exists ? 'Save user' : 'Add user' }}</button>
    </form>
@endsection
