@extends('masters.master')

@section('content')
    <h1>Kategorie anlegen</h1>

    {!! Form::open(['route'=>'categories.store', 'method'=>'post', 'files'=>true, 'class'=>'form-horizontal']) !!}
    @include('categories.form')

    <div class="form-group">
        <button type="submit" class="btn btn-primary">
            Absenden
        </button>
    </div>
    {!! Form::close() !!}
@endsection