<!DOCTYPE HTML>
<html>
<head>
  @include('includes.head')
  <!-- Scripts -->
    <script>
        window.Laravel = <?php echo json_encode([
            'csrfToken' => csrf_token(),
        ]); ?>
    </script>
</head>
<body >
  @include('includes.header')
  @include('includes.sidebar')
<div id="content" class="container">
    @yield('content')
</div>

  @include('includes.footer')
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
</body>
</html>
