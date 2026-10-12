@extends('products.layout')

@section('title', 'Payment')

@section('content')
    <p class="back"><a href="{{ route('subscription') }}">Subscription</a></p>

    <div class="page-head">
        <div>
            <h1>Payment</h1>
            <p>Pay for {{ $plan['name'] }}. The plan starts on this account after payment.</p>
        </div>
    </div>

    <div class="pay-board">
        <article class="panel pay-summary">
            <p class="eyebrow">Monthly</p>
            <h2>{{ $plan['name'] }}</h2>
            <p class="plan-price">{{ $plan['price'] }} <span>/ month</span></p>
            <p>{{ $plan['text'] }}</p>
        </article>

        <form class="panel pay-form" method="post" action="{{ route('subscription.store') }}">
            @csrf
            <input type="hidden" name="plan" value="{{ $plan['key'] }}">

            <div class="field">
                <label for="card_name">Name on card</label>
                <input id="card_name" name="card_name" value="{{ old('card_name', $user->name) }}" required autocomplete="cc-name">
                @error('card_name')
                    <p class="error">{{ $message }}</p>
                @enderror
            </div>

            <div class="field">
                <label for="card_number">Card number</label>
                <input id="card_number" name="card_number" inputmode="numeric" autocomplete="cc-number" placeholder="1234 5678 9012 3456" required>
                @error('card_number')
                    <p class="error">{{ $message }}</p>
                @enderror
            </div>

            <div class="pay-row">
                <div class="field">
                    <label for="expiry">Expiry</label>
                    <input id="expiry" name="expiry" value="{{ old('expiry') }}" inputmode="numeric" autocomplete="cc-exp" placeholder="MM/YY" required>
                    @error('expiry')
                        <p class="error">{{ $message }}</p>
                    @enderror
                </div>
                <div class="field">
                    <label for="cvc">CVC</label>
                    <input id="cvc" name="cvc" inputmode="numeric" autocomplete="cc-csc" placeholder="123" required>
                    @error('cvc')
                        <p class="error">{{ $message }}</p>
                    @enderror
                </div>
            </div>

            <button type="submit">Pay {{ $plan['price'] }}</button>
        </form>
    </div>
@endsection
