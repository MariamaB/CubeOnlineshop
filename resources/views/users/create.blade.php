@extends('masters.master')

@section('content')
    <h1>Mitarbeiter anlegen</h1>

    {!! Form::open(['route'=>'users.store', 'method'=>'post', 'class'=>'form-horizontal']) !!}
    @include('users.form')

    <div class="form-group">
        <button type="submit" class="btn btn-primary">
            Absenden
        </button>
    </div>
    {!! Form::close() !!}
@endsection
