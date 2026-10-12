@extends('products.layout')

@section('title', 'Sign in')

@section('content')
    <div class="auth-card panel">
        <h1>Sign in</h1>

        <form method="post" action="{{ route('login') }}">
            @csrf
            <div class="field">
                <label for="email">Email</label>
                <input id="email" type="email" name="email" value="{{ old('email') }}" autocomplete="username" required autofocus>
                @error('email')
                    <p class="error">{{ $message }}</p>
                @enderror
            </div>

            @include('auth.password-field', [
                'name' => 'password',
                'label' => 'Password',
                'required' => true,
                'autocomplete' => 'current-password',
            ])

            <label class="check">
                <input type="checkbox" name="remember" value="1" @checked(old('remember'))>
                Keep me signed in
            </label>

            <button type="submit">Sign in</button>
        </form>

        @include('auth.social')

        <p class="auth-switch">No account yet? <a href="{{ route('register') }}">Register</a></p>
    </div>
@endsection
