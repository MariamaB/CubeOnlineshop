@extends('masters.master')

@section('content')
    <h1 style="text-align:center;">{{ $article->name }}</h1>
    <hr>

    <div class="row">
        <div id="preisdetail" class="col-md-6">
            {!! $article->description !!}
            <hr>
<div>

            <h3><b>Preis </b><span class="label label-default"> {{ $article->price }} €</span></h3>
            noch {{ $article->amount }} verfügbar
<hr>
     <br />
    <button id="inWarenkorb" class="btn btn-primary" type="submit">In den Warenkorb</button>
</div>
        </div>

        <div>
            <img id="img-responsive" class="col-md-5" src="{{ $article->file->url }}" alt="{{ $article->name }}">
        </div>
    </div>



    @if(auth()->check())
        <hr>
        <a href="{{ route('articles.edit', $article->id) }}">Artikel bearbeiten</a>
        &nbsp;&bull;
        <a href="{{ route('articles.create', $article->id) }}">weiteren Artikel hochladen</a>
        &nbsp;&bull;&nbsp;
        {!! Form::open(['method'=>'delete', 'route'=>['articles.destroy', $article->id]]) !!}
            <input type="submit" value="Artikel löschen"/>
        {!! Form::close() !!}
    @endif
@endsection