<div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
    <label for="name" class="col-md-4 control-label">Name</label>

    <div class="col-md-6">
        <input id="name" type="text" class="form-control" name="name" value="{{isset($article) ? $article->name : old('name') }}" required autofocus>

        @if ($errors->has('name'))
            <span class="help-block">
                <strong>{{ $errors->first('name') }}</strong>
            </span>
        @endif
    </div>
</div>

<div class="form-group{{ $errors->has('category_id') ? ' has-error' : '' }}">
    <label for="category_id" class="col-md-4 control-label">Kategorie</label>

    <div class="col-md-6">
        {!! Form::select('category_id', $categories->pluck('name', 'id'), isset($article) ? $article->category_id : old('category_id'), ['class'=>'form-control']) !!}

        @if ($errors->has('category_id'))
            <span class="help-block">
                <strong>{{ $errors->first('category_id') }}</strong>
            </span>
        @endif
    </div>
</div>

<div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
    <label for="description" class="col-md-4 control-label">Beschreibung</label>

    <div class="col-md-6">
        <textarea class="form-control" name="description" id="description" rows="5">{{ isset($article) ? $article->description : old('description') }}</textarea>

        @if ($errors->has('description'))
            <span class="help-block">
                <strong>{{ $errors->first('description') }}</strong>
            </span>
        @endif
    </div>
</div>

<div class="form-group{{ $errors->has('price') ? ' has-error' : '' }}">
    <label for="price" class="col-md-4 control-label">Preis</label>

    <div class="col-md-6">
        <input id="price" type="number" class="form-control" name="price" value="{{ isset($article) ? $article->getOriginal('price') : old('price') }}" required>

        @if ($errors->has('price'))
            <span class="help-block">
                <strong>{{ $errors->first('price') }}</strong>
            </span>
        @endif
    </div>
</div>

<div class="form-group{{ $errors->has('amount') ? ' has-error' : '' }}">
    <label for="amount" class="col-md-4 control-label">Menge</label>

    <div class="col-md-6">
        <input id="amount" type="number" class="form-control" name="amount" value="{{ isset($article) ? $article->amount : old('amount') }}" required>

        @if ($errors->has('amount'))
            <span class="help-block">
                <strong>{{ $errors->first('amount') }}</strong>
            </span>
        @endif
    </div>
</div>

<div class="form-group{{ $errors->has('file') ? ' has-error' : '' }}">
    <label for="name" class="col-md-4 control-label">Bild</label>

    <div class="col-md-6">
        <input id="file" type="file" name="file" value="{{ old('file') }}" required>

        @if ($errors->has('file'))
            <span class="help-block">
                <strong>{{ $errors->first('file') }}</strong>
            </span>
        @endif
    </div>
</div>