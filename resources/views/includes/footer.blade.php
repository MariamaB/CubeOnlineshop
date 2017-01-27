<div class="container" id="footerContainer">
    <!----------- Footer ------------>
    <footer class="footer-bs">
        <div class="row">
            <div class="col-md-3 footer-brand animated fadeInLeft">
                <h2>Cube Inc.</h2>
                <p>Cube Inc ist ein Online-Anbieter für Schreibwaren und Arbeitswaren. Unser Angebot umfasst über vielen Modellen und Own-Label Produkte für Sie. </p>
                <p>© 2017 Cube. All rights reserved</p>
            </div>
            <div class="col-md-3 footer-nav animated fadeInUp">
                <h4>Mitarbeiter</h4>
                @if(Auth::guest())
                <div class="col-md-6">
                    <ul class="pages">
                        <li><a href="{{ url('register') }}">Registierung</a></li>
                        <li><a href="{{ url('login') }}">Login</a></li>
                        <li><a href="{{ url('termofservices') }}">Impressum</a></li>
                    </ul>
                </div>
                @else
                    <div class="col-md-6">
                        <a href="{{ url('/logout') }}"
                           onclick="event.preventDefault();
                            document.getElementById('logout-form').submit();">Ausloggen</a>
                        <form id="logout-form" action="{{ url('/logout') }}" method="POST" style="display: none;">
                            {{ csrf_field() }}
                        </form>
                        @endif
                    </div>
{{--                <div class="col-md-4">
                    <ul class="list">
                        <li><a href="#">Über uns</a></li>
                        <li><a href="#">Kontakt</a></li>
                        <li><a href="#">Karriere bei uns</a></li>
                        <li><a href="{{ url('termofservices') }}">Impressum</a></li>
                    </ul>
                </div>--}}

            <div class="col-md-2 footer-social animated fadeInDown">
                <h4>Follow us</h4>
                <ul>
                    <li><a href="#">Facebook</a></li>
                    <li><a href="#">Twitter</a></li>
                    <li><a href="#">Instagram</a></li>
                    <li><a href="#">RSS</a></li>
                </ul>
            </div>
            <div class="col-md-4 footer-ns animated fadeInRight">
                <h4>Newsletter</h4>
                <p>Erfahren Sie alles über unsere Neuheiten</p>
                <p>
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Ihre Email-Adresse">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-envelope"></span></button>
                      </span>
                </div><!-- /input-group -->
                </p>
            </div>
        </div>
    </footer>

</div>
