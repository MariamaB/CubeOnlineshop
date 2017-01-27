@extends('masters.master')

@section('content')
    <h1>{{ $category->name }}</h1>

    @forelse(array_chunk($category->articles->all(), 4) AS $row)
        <div class="row">
            @foreach($row AS $item)
                <div class="col-sm-3">
                    <div class="panel panel-default">
                        <div class="panel-heading">{!! link_to_route('articles.show', $item->name, $item->id) !!}</div>
                        <div class="panel-body">
                            <img class="img-responsive" src="{{ $item->file->url }}" alt="{{ $item->name }}">
                        </div>
                        <div class="panel-footer">
                            {{ $item->price }}
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    @empty
        <div class="alert alert-info">Keine Artikel in der Kategorie vorhanden.</div>
    @endforelse

    @if(auth()->check())
        <hr>
        <a href="{{ route('categories.edit', $category->id) }}">Kategorie bearbeiten</a>
        &nbsp;&bull;&nbsp;
        {!! Form::open(['method'=>'delete', 'route'=>['categories.destroy', $category->id]]) !!}
        <input type="submit" value="Kategorie löschen"/>
        {!! Form::close() !!}
        &nbsp;&bull;&nbsp;
        <a href="{{ route('articles.create') }}">Artikel anlegen</a>
    @endif
@endsection