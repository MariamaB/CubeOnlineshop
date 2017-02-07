@extends('masters.master')

@section('content')

    <h2 style="text-align:center;"><strong>Impressum</strong></h2>
    <hr>
    <p>Diese Website wurde im Rahmen einer Projektarbeit erstellt. Sie dient keinerlei kommerziellen Zwecken

        und ausschließlich zur Demonstration der Verwendung einer Datenbank und Realisierung mit Hilfe des

        Framework Laravel
        <br>
        <br>
        <a target = '_blank' href="https://laravel.com/docs">Documentation</a>
        <br>
        <a target = '_blank' href="https://laracasts.com">Laracasts</a>
        <br>
        <a target = '_blank' href="https://laravel-news.com">News</a>
        <br>
        <a target = '_blank' href="https://forge.laravel.com">Forge</a>
        <br>
        <a target = '_blank' href="https://github.com/laravel/laravel">GitHub</a>
    </p>
    <br>
    <p>Modul: Besondere Kapitel der Informatik bei Herr Yavuz. Im Studiengang 'Informatik und Wirtschaft (Frauenstudiengang)'<br>
    <p>an der Hochschule für Technik und Wirtschaft in Berlin.</p>
    <br><p style="text-align: left"><img src="{{ asset('img/piktogramm.jpg') }}" alt="piktogramm.jpg" height="100" width="100"></p>
    <br>
    <br>
    <p>Die Rechte der auf diese Homepage verwendeten Bilder, bleiben den Eigentümer vorbehalten.</p>

    <p>Unser CUBE INC schützt uns vor sämtlichen Hackerangriffen, da diese eh sinnlos sind.</p>

    <p style="text-align: left"><img src="{{ asset('img/HTW_logo.jpeg') }}" alt="HTW_logo.jpeg"></p>
@endsection
