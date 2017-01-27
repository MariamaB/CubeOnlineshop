@extends('masters.master')

@section('content')
    <h1>Artikel &raquo;{{ $article->name }}&laquo; bearbeiten</h1>

    {!! Form::open(['route'=>['articles.update', $article->id], 'method'=>'put', 'files'=>true, 'class'=>'form-horizontal']) !!}
    @include('articles.form')

    <div class="form-group">
        <button type="submit" class="btn btn-primary">
            Absenden
        </button>
    </div>
    {!! Form::close() !!}
@endsection
