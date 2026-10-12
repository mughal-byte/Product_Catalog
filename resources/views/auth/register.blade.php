@extends('products.layout')

@section('title', 'Register')

@section('content')
    <div class="auth-card panel">
        <h1>Register</h1>
        <p>A new account is a User. An admin can change that later.</p>

        <form method="post" action="{{ route('register.store') }}">
            @csrf
            <div class="field">
                <label for="name">Name</label>
                <input id="name" name="name" value="{{ old('name') }}" autocomplete="name" required autofocus>
                @error('name')
                    <p class="error">{{ $message }}</p>
                @enderror
            </div>

            <div class="field">
                <label for="email">Email</label>
                <input id="email" type="email" name="email" value="{{ old('email') }}" autocomplete="username" required>
                @error('email')
                    <p class="error">{{ $message }}</p>
                @enderror
            </div>

            @include('auth.password-field', [
                'name' => 'password',
                'label' => 'Password',
                'required' => true,
                'autocomplete' => 'new-password',
            ])

            @include('auth.password-field', [
                'name' => 'password_confirmation',
                'label' => 'Confirm password',
                'required' => true,
                'autocomplete' => 'new-password',
            ])

            <button type="submit">Create account</button>
        </form>

        @include('auth.social')

        <p class="auth-switch">Already have an account? <a href="{{ route('login') }}">Sign in</a></p>
    </div>
@endsection
