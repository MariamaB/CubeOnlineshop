<div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
    <label for="name" class="col-md-4 control-label">Name</label>

    <div class="col-md-6">
        <input id="name" type="text" class="form-control" name="name" value="{{ $user->name ?? old('name') }}" required autofocus>

        @if ($errors->has('name'))
            <span class="help-block">
                <strong>{{ $errors->first('name') }}</strong>
            </span>
        @endif
    </div>
</div>

<div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
    <label for="email" class="col-md-4 control-label">E-Mail - Adresse</label>

    <div class="col-md-6">
        <input id="email" type="text" class="form-control" name="email" value="{{ $user->email ?? old('email') }}" required>

        @if ($errors->has('name'))
            <span class="help-block">
                <strong>{{ $errors->first('name') }}</strong>
            </span>
        @endif
    </div>
</div>

<div class="form-group{{ $errors->has('invite_code') ? ' has-error' : '' }}">
    <label for="invite_code" class="col-md-4 control-label">Einladungscode</label>

    <div class="col-md-6">
        <input id="invite_code" type="number" class="form-control" name="invite_code" value="{{ $user->invite_code ?? old('invite_code') }}" required>

        @if ($errors->has('invite_code'))
            <span class="help-block">
                <strong>{{ $errors->first('invite_code') }}</strong>
            </span>
        @endif
    </div>
</div>