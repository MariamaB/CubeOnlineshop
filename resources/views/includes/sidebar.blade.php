<div id="mySidenav" class="sidenav navbar">
    <div id="mySidenav2">

        <h3><label id="searchLabel"><span class="label label-success">Suchen: </span></label></h3>
        <div id="searchForm" >
            {!! Form:: open (['route' => 'articles.search', 'method'=> 'GET' , 'class'=>"navbar-form navbar-left"]) !!}
            {!! Form::text('term',Request::get('term'),['class'=> 'form-control', 'placeholder'=> 'Suchen' ]) !!}
            <button type="submit" class="btn btn-warning">Suchen</button>
            {!! Form::close() !!}
        </div>

        <h3><label id="filterLabel"><span class="label label-success">Filtern: </span></label></h3>
        <div id="filterForm" >
            {!! Form:: open (['route' => 'articles.filteredsearch', 'method'=> 'GET' , 'class'=>"navbar-form navbar-left"]) !!}
            {!! Form::text('ab_price',Request::get('ab_price'),['class'=> 'form-control', 'placeholder'=> 'Preis ab €' ]) !!}
            {!! Form::text('bis_price',Request::get('bis_price'),['class'=> 'form-control', 'placeholder'=> 'Preis bis €' ]) !!}
            <button type="submit" class="btn btn-warning">Filtern</button>
            {!! Form::close() !!}
        </div>

        <div class="col-lg-2">
            {{-- {!! Form::open (['route' =>  ['articles.shortby'], 'method'=> 'GET' , 'class'=>"navbar-form navbar-right"]) !!} --}}
            <div class="from-group">
                <!-- <label for="">Sortierung</label> -->
                <h3><label id="sortLabel"><span class="label label-success">Sortierung: </span></label></h3>
                <form>
                    <select id="sortFilter" class="form-control input-sm" name="sortieren">
                        <option value="asc_new">Neu</option>
                        <option value="asc_price_low">Sale</option>
                        <option value="asc_top">Top-Seller</option>
                        <option value="asc_name">Name A-Z</option>
                        <option value="desc_name">Name Z-A</option>
                        <option value="asc_price">Preis aufsteigend</option>
                        <option value="desc_price">Preis absteigend</option>
                    </select>
                {{--  <button type="submit" class="btn btn-default">Sortieren</button> --}}
            </div>
            {{--{{Form::close()}}--}}
        </div>

    </div>
</div>

<!-- Add all page content inside this div if you want the side nav to push page content to the right (not used if you only want the sidenav to sit on top of the page -->
