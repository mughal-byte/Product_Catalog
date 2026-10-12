<div class="field">
    <label for="{{ $name }}">{{ $label }}</label>
    <div class="password-field">
        <input id="{{ $name }}" type="password" name="{{ $name }}" autocomplete="{{ $autocomplete }}" @required($required)>
        <button type="button" class="show-password" data-show-password="{{ $name }}">Show</button>
    </div>
    @if (! empty($hint ?? null))
        <small>{{ $hint }}</small>
    @endif
    @error($name)
        <p class="error">{{ $message }}</p>
    @enderror
</div>
