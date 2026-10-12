@extends('products.layout')

@section('title', 'Profile')

@section('content')
    <div class="page-head">
        <div>
            <h1>Profile</h1>
            <p>Your photo, account details, and notifications.</p>
        </div>
    </div>

    <form class="profile-board" method="post" action="{{ route('profile.update') }}" enctype="multipart/form-data">
        @csrf
        @method('PUT')

        <aside class="panel profile-photo">
            <label class="avatar" for="avatar">
                @if ($user->avatar)
                    <img id="avatar-preview" src="{{ asset($user->avatar) }}" alt="">
                @else
                    <span id="avatar-letter">{{ strtoupper(substr($user->name, 0, 1)) }}</span>
                @endif
                <input id="avatar" type="file" name="avatar" accept="image/jpeg,image/png,image/webp">
            </label>
            <p class="avatar-name">{{ $user->name }}</p>
            <p class="hint">Click the photo to change it. JPG, PNG, or WebP, up to 2 MB.</p>
            @error('avatar')
                <p class="error">{{ $message }}</p>
            @enderror
        </aside>

        <section class="panel profile-details">
            <div class="field">
                <label for="name">Name</label>
                <input id="name" name="name" value="{{ old('name', $user->name) }}" required>
                @error('name')
                    <p class="error">{{ $message }}</p>
                @enderror
            </div>

            <div class="field">
                <label for="email">Email</label>
                <input id="email" value="{{ $user->email }}" readonly>
            </div>

            <div class="field">
                <label>Role</label>
                <p class="profile-role">{{ $user->role?->name }}</p>
            </div>

            @include('auth.password-field', [
                'name' => 'password',
                'label' => 'New password',
                'required' => false,
                'autocomplete' => 'new-password',
                'hint' => 'Leave this empty to keep the current password.',
            ])

            @include('auth.password-field', [
                'name' => 'password_confirmation',
                'label' => 'Confirm password',
                'required' => false,
                'autocomplete' => 'new-password',
            ])

            <div class="notify">
                <div>
                    <strong>Notifications</strong>
                    <p>On sends scrape complete, catalog updates, and scrape problems to this system. Off does not. The bell keeps them either way.</p>
                </div>
                <input type="hidden" name="notifications" value="0">
                <label class="switch">
                    <input type="checkbox" name="notifications" value="1" data-notifications="{{ route('profile.notifications') }}" @checked(old('notifications', $user->notifications ? '1' : '0') == '1')>
                    <span></span>
                </label>
            </div>

            <button type="submit">Save profile</button>
        </section>
    </form>

    <script>
        document.getElementById('avatar').addEventListener('change', (event) => {
            const file = event.target.files[0];
            if (!file) return;
            let preview = document.getElementById('avatar-preview');
            if (!preview) {
                preview = document.createElement('img');
                preview.id = 'avatar-preview';
                preview.alt = '';
                event.target.before(preview);
            }
            preview.src = URL.createObjectURL(file);
            document.getElementById('avatar-letter')?.remove();
        });
    </script>
@endsection
