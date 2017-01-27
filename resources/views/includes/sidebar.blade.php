<div id="mySidenav" class="sidenav navbar navbar-inverse">
<div id="mySidenav2">

    <label id="filterLabel"><span class="badge">Filter und Suche nach Preis: </span></label>
    <form id="filterForm" >
        {!! Form:: open (['route' => 'articles.filteredsearch', 'method'=> 'GET' , 'class'=>"navbar-form navbar-left"]) !!}
        {!! Form::text('ab_price',Request::get('ab_price'),['class'=> 'form-control', 'placeholder'=> 'Preis ab €' ]) !!}
        {!! Form::text('bis_price',Request::get('bis_price'),['class'=> 'form-control', 'placeholder'=> ' Preis bis €' ]) !!}
        {!! Form::text('term',Request::get('term'),['class'=> 'form-control', 'placeholder'=> 'Search' ]) !!}
       <button type="submit" class="btn btn-default">Filtern</button>
        {!! Form::close() !!}
    </form>
</div>

</div>

<!-- Add all page content inside this div if you want the side nav to push page content to the right (not used if you only want the sidenav to sit on top of the page -->