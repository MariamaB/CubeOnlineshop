@extends('masters.master')

@section('content')
    <h1>Mitarbeiter bearbeiten</h1>

    {!! Form::open(['route'=>['users.update', $user->id], 'method'=>'put', 'class'=>'form-horizontal']) !!}
    @include('users.form')

    <div class="form-group">
        <button type="submit" class="btn btn-primary">
            Absenden
        </button>
    </div>
    {!! Form::close() !!}
@endsection