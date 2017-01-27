<nav class="navbar-nav navbar-fixed-bottom">
<div class="container">
    <div class="row">
        <hr>
        <div class="col-lg-12">
            @if(Auth::guest())
              <div class="col-md-8">
                <a href="{{ url('register') }}">Registierung</a> | <a href="{{ url('login') }}">Einloggen</a>
              </div>
            @else
              <div class="col-md-4">
                <a href="{{ url('/logout') }}"
                      onclick="event.preventDefault();
                            document.getElementById('logout-form').submit();">Ausloggen</a>
                      <form id="logout-form" action="{{ url('/logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                      </form>
            @endif
                    <p class="muted pull-right">© 2017 Cube. All rights reserved</p>
            </div>
        </div>
    </div>
</div>
</nav>
