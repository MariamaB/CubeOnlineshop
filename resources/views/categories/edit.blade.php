@extends('masters.master')

@section('content')
    <h1>Kategorie &raquo;{{ $category->name }}&laquo; bearbeiten</h1>

    {!! Form::open(['route'=>['categories.update', $category->id], 'method'=>'put', 'files'=>true, 'class'=>'form-horizontal']) !!}
    @include('categories.form')

    <div class="form-group">
        <button type="submit" class="btn btn-primary">
            Absenden
        </button>
    </div>
    {!! Form::close() !!}
@endsection