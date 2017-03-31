<div id="main-menu" class="col-sm-9 main-menu">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#">MENU</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="{{url('/')}}">TRANG CHỦ</a></li>
                    <li class="dropdown"><a href="{{url('/product')}}" class="dropdown-toggle" data-toggle="dropdown">SẢN PHẨM</a></li>
                    <li class="dropdown"><a href="{{url('/blog')}}" class="dropdown-toggle" data-toggle="dropdown"> SỰ KIỆN </a></li>
                    <li class="dropdown"><a href="{{url('/wishlist')}}" class="dropdown-toggle" data-toggle="dropdown">KHUYẾN MÃI</a>
                    <li class="dropdown"><a href="{{url('/about')}}" class="dropdown-toggle" data-toggle="dropdown">GIỚI THIỆU</a>
                    </li>
                    <li><a href="{{url('/contact')}}">LIÊN HỆ</a></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </nav>
</div>