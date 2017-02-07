@extends('masters.master')

@section('content')

    @forelse(array_chunk($articles->all(), 4) AS $row)
        <div class="row">
            @foreach($row AS $item)
                <div class="col-sm-3">
                    <div class="panel panel-default">
                        <div class="panel-heading" style="background-color:#DBFF33;" >{!! link_to_route('articles.show', $item->name, $item->id) !!}</div>
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
        <div class="alert alert-info">Keine Artikel gefunden.</div>
    @endforelse

@endsection