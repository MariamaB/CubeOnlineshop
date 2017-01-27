@extends('masters.master')

@section('content')
    <h1>Mitarbeiter</h1>

    <table class="table table-hover table-striped table-bordered">
        <thead>
            <tr>
                <td>Name</td>
                <td>E-Mail</td>
                <td>Einladungscode</td>
                <td colspan="2"></td>
            </tr>
        </thead>
        <tbody>
            @foreach($users AS $user)
                <tr>
                    <td>{{ $user->name }}</td>
                    <td>{{ $user->email }}</td>
                    <td>{{ $user->invite_code }}</td>
                    <td>{!! link_to_route('users.edit', $user->name.' bearbeiten', $user->id) !!}</td>
                    <td>
                        {!! Form::open(['method'=>'delete', 'route'=>['users.destroy', $user->id]]) !!}
                        <input type="submit" value="Mitarbeiter löschen"/>
                        {!! Form::close() !!}
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <hr>

    <a href="{{ route('users.create') }}">Benutzer anlegen</a>
@endsection