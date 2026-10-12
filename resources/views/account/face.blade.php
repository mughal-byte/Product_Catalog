@if (auth()->user()->avatar)
    <img class="account-face" src="{{ asset(auth()->user()->avatar) }}" alt="">
@else
    <span class="account-face">{{ strtoupper(substr(auth()->user()->name, 0, 1)) }}</span>
@endif
