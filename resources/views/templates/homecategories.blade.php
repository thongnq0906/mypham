<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>@yield('title')</title>
    @include('partials.head')
    @yield('head-of-page')
</head>
<body class="category-page">
<!-- HEADER -->
<div id="header" class="header">
    @include('partials.header')
    <div id="nav-top-menu" class="nav-top-menu">
        <div class="container">
            <div class="row">
                @include('partials.leftmenu')
                @include('partials.mainmenu')
            </div>
            <!-- userinfo on top-->
            <div id="form-search-opntop">
            </div>
            <!-- userinfo on top-->
            <div id="user-info-opntop">
            </div>
            <!-- CART ICON ON MMENU -->
            <div id="shopping-cart-box-ontop">
                <i class="fa fa-shopping-cart"></i>
                <div class="shopping-cart-box-ontop-content"></div>
            </div>
        </div>
    </div>
</div>
<!-- end header -->
    @yield('content')
    @include('partials.footer')
<!-- Footer -->
</body>
</html>