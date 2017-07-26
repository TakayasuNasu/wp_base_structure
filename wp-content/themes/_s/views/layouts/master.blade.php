<html>
<head>
  <title>@yield('title')</title>
</head>
<body>
  @section('header')
    @include('header')
  @show
  @section('sidebar')
    ここはマスターサイドバー
  @show

  <div class="container">
    @yield('content')
  </div>
</body>
</html>
