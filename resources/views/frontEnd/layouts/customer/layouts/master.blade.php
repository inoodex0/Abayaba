<!DOCTYPE html>
<html class="no-js" lang="zxx">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>@yield('title')</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Place favicon.ico in the root directory -->
    <link
      rel="shortcut icon"
      type="image/x-icon"
      href="assets/img/favicon.png"
    />

    <!-- CSS here -->
    <link rel="stylesheet" href="{{asset('public/frontEnd/assets/css/bootstrap.css')}}" />
    <link rel="stylesheet" href="{{asset('public/frontEnd/assets/css/meanmenu.css')}}" />
    <link rel="stylesheet" href="{{asset('public/frontEnd/assets/css/animate.css')}}" />
    <link rel="stylesheet" href="{{asset('public/frontEnd/assets/css/swiper-bundle.css')}}" />
    <link rel="stylesheet" href="{{asset('public/frontEnd/assets/css/slick.css')}}" />
    <link rel="stylesheet" href="{{asset('public/frontEnd/assets/css/backtotop.css')}}" />
    <link rel="stylesheet" href="{{asset('public/frontEnd/assets/css/magnific-popup.css')}}" />
    <link rel="stylesheet" href="{{asset('public/frontEnd/assets/css/nice-select.css')}}" />
    <link rel="stylesheet" href="{{asset('public/frontEnd/assets/css/ui-icon.css')}}" />
    <link rel="stylesheet" href="{{asset('public/frontEnd/assets/css/font-awesome-pro.css')}}" />
    <link rel="stylesheet" href="{{asset('public/frontEnd/assets/css/spacing.css')}}" />
    <link rel="stylesheet" href="{{asset('public/frontEnd/assets/css/style.css')}}" />
    <link rel="stylesheet" href="{{asset('public/frontEnd/assets/css/responsive.css')}}" />
      <!-- toastr css -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet">
  </head>
  <body>
    <main>
      @yield('content')
    </main>

    <!-- JS here -->
    <script src="{{asset('public/frontEnd/assets/js/vendor/jquery.js')}}"></script>
    <script src="{{asset('public/frontEnd/assets/js/vendor/waypoints.js')}}"></script>
    <script src="{{asset('public/frontEnd/assets/js/bootstrap-bundle.js')}}"></script>
    <script
      nomodule
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
    ></script>
    <script
      type="module"
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
    ></script>
    <script src="{{asset('public/frontEnd/assets/js/meanmenu.js')}}"></script>
    <script src="{{asset('public/frontEnd/assets/js/swiper-bundle.js')}}"></script>
    <script src="{{asset('public/frontEnd/assets/js/slick.js')}}"></script>
    <script src="{{asset('public/frontEnd/assets/js/magnific-popup.js')}}"></script>
    <script src="{{asset('public/frontEnd/assets/js/parallax.js')}}"></script>
    <script src="{{asset('public/frontEnd/assets/js/nice-select.js')}}"></script>
    <script src="{{asset('public/frontEnd/assets/js/counterup.js')}}"></script>
    <script src="{{asset('public/frontEnd/assets/js/wow.js')}}"></script>
    <script src="{{asset('public/frontEnd/assets/js/isotope-pkgd.js')}}"></script>
    <script src="{{asset('public/frontEnd/assets/js/imagesloaded-pkgd.js')}}"></script>
    <script src="{{asset('public/frontEnd/assets/js/ajax-form.js')}}"></script>
    <script src="{{asset('public/frontEnd/assets/js/main.js')}}"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    {!! Toastr::message() !!} 
  </body>
</html>
