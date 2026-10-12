@extends('products.layout')

@section('title', 'Users')

@section('content')
    <div class="page-head">
        <div>
            <h1>Users</h1>
            <p>{{ $users->count() }} {{ str('account')->plural($users->count()) }} can sign in.</p>
        </div>
        <a class="btn" href="{{ route('users.create') }}">Add user</a>
    </div>

    @error('user')
        <p class="error">{{ $message }}</p>
    @enderror
    @error('role_id')
        <p class="error">{{ $message }}</p>
    @enderror

    <div class="role-strip">
        @foreach ($roles as $role)
            <article class="panel role-card">
                <span @class(['pill', 'pill-user' => $role->slug !== 'admin'])>{{ $role->name }}</span>
                <p>{{ $role->description }}</p>
            </article>
        @endforeach
    </div>

    <div class="panel users-wrap">
        <table class="users">
            <thead>
                <tr>
                    <th>Account</th>
                    <th>Role</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach ($users as $user)
                    <tr>
                        <td>
                            <div class="user-cell">
                                @if ($user->avatar)
                                    <img class="user-face" src="{{ asset($user->avatar) }}" alt="">
                                @else
                                    <span class="user-face">{{ strtoupper(substr($user->name, 0, 1)) }}</span>
                                @endif
                                <div>
                                    <strong>
                                        {{ $user->name }}
                                        @if ($user->is(auth()->user()))
                                            <span class="you">You</span>
                                        @endif
                                    </strong>
                                    <span class="mail">{{ $user->email }}</span>
                                </div>
                            </div>
                        </td>
                        <td>
                            <span @class(['pill', 'pill-user' => $user->role?->slug !== 'admin'])>{{ $user->role?->name ?? 'None' }}</span>
                        </td>
                        <td>
                            <div class="row-actions">
                                <a class="btn btn-quiet" href="{{ route('users.edit', $user) }}">Edit</a>
                                @if (! $user->is(auth()->user()))
                                    <form method="post" action="{{ route('users.destroy', $user) }}" onsubmit="return confirm('Delete {{ $user->name }}?')">
                                        @csrf
                                        @method('DELETE')
                                        <button class="btn-danger" type="submit">Delete</button>
                                    </form>
                                @endif
                            </div>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
