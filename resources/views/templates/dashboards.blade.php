<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}"/>
    <title>Quản trị my phẩm</title>
    <script>
        var APP_URL = '{{ url('/') }}/';
    </script>
    @include('partials.headAdmin')
</head>
<body>
<!--  wrapper -->
<div id="wrapper">
    @include('partials.headerAdmin')
    <!-- end navbar side -->
    @include('partials.leftmenuAdmin')
    <!--  page-wrapper -->
    @yield('content')
    <!-- end page-wrapper -->

</div>
<!-- end wrapper -->

    @include('partials.footerAdmin')
    @yield('adminScript')
</body>

</html>
