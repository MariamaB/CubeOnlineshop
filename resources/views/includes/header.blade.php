<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="{{ url('/') }}">
                <img class="img-thumbnail" src="{{ asset('img/cube.png') }}" alt="../Products/cubeLogo2.jpg"/>
            </a>
        </div>
        <ul class="nav navbar-nav pull-left">
            <li class="active"><a href="{{ url('/') }}">Home</a></li>
            @if(auth()->check())<li><a href="{{ route('users.index') }}">Mitarbeiter</a></li>@endif

        </ul>

        <ul class="nav navbar-nav pull-center">
            @if(auth()->check())
                <li><a href="#">Hallo Mitarbeiter {{ auth()->user()->name }}!</a></li>

            @endif
        </ul>

        {{--<form class="navbar-form navbar-right" role="search">--}}
            {!! Form:: open (['route' => 'articles.search', 'method'=> 'GET' , 'class'=>"navbar-form navbar-right"]) !!}
         {!! Form::text('term',Request::get('term'),['class'=> 'form-control', 'placeholder'=> 'Suche Produkt' ]) !!}

            <button type="submit" class="btn btn-default">Suchen ohne Filter</button>
</form>
{!! Form::close() !!}



</div>
</nav>
