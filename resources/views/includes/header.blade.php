<nav class="navbar navbar-inverse navbar-fixed-top" style="background-color: #3385ff">
    <div class="container" text="white">
        <div class="navbar-header">
            <a class="navbar-brand" href="{{ url('/') }}">
                <img src="{{ asset('img/cube.png') }}" alt="../Products/cubeLogo2.jpg"/>
            </a>
        </div>
        <ul class="nav navbar-nav pull-left">
            <li><a style="color: white"; href="{{ url('/') }}">Home</a></li>
            @if(auth()->check())<li><a style="color: white"; href="{{ route('users.index') }}">Mitarbeiter</a></li>@endif
        </ul>

        <ul class="nav navbar-nav pull-center">
            @if(auth()->check())
                <li><a style="color: white"; href="#">Hallo Mitarbeiter {{ auth()->user()->name }}!</a></li>

            @endif
        </ul>

        <ul class="nav navbar-nav pull-right">
            <li class="next"><a style="color: white"; href="#"><strong>Cube INC.</strong></a></li>
        </ul>

    </div>
</nav>
