@extends('products.layout')

@section('title', 'Not allowed')

@section('content')
    <div class="auth-card panel">
        <h1>Not allowed</h1>
        <p>Your role does not include this page.</p>
        <a class="btn" href="{{ route('sites.index') }}">Back to catalogs</a>
    </div>
@endsection
