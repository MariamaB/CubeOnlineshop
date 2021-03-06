@extends('masters.master')

@section('content')
    <h1>Artikel anlegen</h1>

    {!! Form::open(['route'=>'articles.store', 'method'=>'post', 'files'=>true, 'class'=>'form-horizontal']) !!}
    @include('articles.form')

    <div class="form-group">
        <button type="submit" class="btn btn-primary">
            Absenden
        </button>
    </div>
    {!! Form::close() !!}
@endsection