@extends('masters.master')

@section('content')
    <h1>Kategorieübersicht</h1>

    @forelse(array_chunk($categories->all(), 4) AS $row)
        <div class="row">
            @foreach($row AS $item)
                <div class="col-sm-3">
                    <div class="panel panel-default">
                        <div class="panel-heading">{!! link_to_route('categories.show', $item->name, $item->id) !!}</div>
                        <div class="panel-body">
                            <img class="img-responsive" src="{{ $item->file->url }}" alt="{{ $item->name }}">
                        </div>
                        <div class="panel-footer">
                            {{ $item->articles->count() }} Artikel
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    @empty
        <div class="alert alert-info">Keine Kategorien vorhanden.</div>
    @endforelse

    @if(auth()->check())
        <hr>
        <a href="{{ route('categories.create') }}">Kategorie anlegen</a>
        &nbsp;&bull;&nbsp;
        <a href="{{ route('articles.create') }}">Artikel anlegen</a>
    @endif
@endsection
