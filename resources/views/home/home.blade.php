<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    @include('partials.head')
    <title>Mỹ phẩm sách tay chính hãng</title>
</head>
<body class="home">
<!-- HEADER -->
<div id="header" class="header">
@include('partials.header')
    <!--     /.top-header
        MAIN HEADER -->
    <!-- <!-- END MANIN HEADER -->
    <div id="nav-top-menu" class="nav-top-menu">
        <div class="container">
            <div class="row">
                @include('partials.leftmenu');
                <div id="main-menu" class="col-sm-9 main-menu">
                    <nav class="navbar navbar-default">
                        <div class="container-fluid">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                    <i class="fa fa-bars"></i>
                                </button>
                                <a class="navbar-brand" href="{{url('/')}}">MENU</a>
                            </div>
                            <div id="navbar" class="navbar-collapse collapse">
                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="{{url('/')}}">TRANG CHỦ</a></li>
                                    <li class="dropdown"><a href="{{url('/product')}}" class="dropdown-toggle" data-toggle="dropdown">SẢN PHẨM</a></li>
                                    <li class="dropdown"><a href="{{url('/blog')}}" class="dropdown-toggle" data-toggle="dropdown">SỰ KIỆN</a></li>
                                    <li class="dropdown"><a href="{{url('/wishlist')}}" class="dropdown-toggle" data-toggle="dropdown">KHUYẾN MÃI</a>
                                    <li class="dropdown"><a href="{{url('/about')}}" class="dropdown-toggle" data-toggle="dropdown">GIỚI THIỆU</a>
                                    </li>
                                    <li><a href="{{url('/contact')}}">LIÊN HỆ</a></li>
                                </ul>
                            </div><!--/.nav-collapse-->
                        </div>
                    </nav>
                </div>
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

            @if(Session::has('out_of_stock'))
                <div class="container margin-top-10">
                    <div class="col-sm-3 slider-left"></div>
                    <div class="col-sm-9 header-top-right">
                        <div class="alert alert-warning red">
                            <b>{{ Session::get('out_of_stock') }}</b>
                        </div>
                    </div>
                </div>
            @endif

            <!-- Home slideder-->
            <div id="home-slider">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-3 slider-left"></div>
                        <div class="col-sm-9 header-top-right">
                            <div class="homeslider">
                                <div class="content-slide">
                                    <ul id="contenhomeslider">
                                        <li><img alt="Funky roots" src="{{ url('img\chMZes_simg_eefadc_1130x300_maxb.jpg') }}" title="Funky roots"  style="height: 350px;"/></li>
                                        <li><img  alt="Funky roots" src="{{ url('img\NXXloz_simg_eefadc_1130x300_maxb.jpg') }}" title="Funky roots" style="height: 350px; " /></li>
                                        <li><img alt="Funky roots" src="{{ url('img\f32444_simg_eefadc_1130x300_maxb.jpg') }}" title="Funky roots"  style="height: 350px; "/></li>
                                        <li><img  alt="Funky roots" src="{{ url('img\TWOifi_simg_eefadc_1130x300_maxb.jpg') }}" title="Funky roots" style="height: 350px;" /></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="header-banner banner-opacity">
                                <a href="{{url('/product')}}"><img alt="Funky roots" src="{{ url('img/abc.jpg') }}"  style="height: 350px;" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END Home slideder-->
            <!-- servives -->
            <div class="container">
                <!-- dịch vụ -->
                <div class="service " style="height: 80px; margin: 5px;">
                    <div class="col-xs-6 col-sm-3 service-item">
                        <div class="icon">
                            <img alt="services" src="{{ url('assets/data/s1.png') }}" />
                        </div>
                        <div class="info">
                            <a href="#"><h3>GIAO HÀNG MIỄN PHÍ</h3></a>
                            <span>Hóa đơn trên 5 triệu</span>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-3 service-item">
                        <div class="icon">
                            <img alt="services" src="{{ url('assets/data/s2.png') }}" />
                        </div>
                        <div class="info">
                            <h3><a href="#">ĐỔI TRẢ-30 NGÀY</a></h3>
                            <span>Đảm bảo lại tiền</span>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-3 service-item">
                        <div class="icon">
                            <img alt="services" src="{{ url('assets/data/s3.png') }}" />
                        </div>

                        <div class="info" >
                            <a href="#"><h3>24/7 Hỗ TRỢ</h3></a>
                            <span>Tư vấn trực tuyến</span>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-3 service-item">
                        <div class="icon">
                            <img alt="services" src="{{ url('assets/data/s4.png') }}" />
                        </div>
                        <div class="info">
                            <a href="#"><h3>MUA SẮM AN TOÀN</h3></a>
                            <span>Đảm bảo an toàn mua sắm</span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end services -->

            <div class="page-top">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-9 page-top-left">
                            <div class="popular-tabs">
                                <ul class="nav-tab">
                                    <li class="active"><a data-toggle="tab" href="#tab-1">BEST SELLERS</a></li>
                                    <li><a data-toggle="tab" href="#tab-2">KHUYẾN MÃI</a></li>
                                    <li><a data-toggle="tab" href="#tab-3">SẢN PHẨM MỚI</a></li>
                                </ul>
                                <div class="tab-container">

                                    <div id="tab-1" class="tab-panel active">
                                        <ul class="product-list owl-carousel" data-dots="false" data-loop="true" data-nav = "true" data-margin = "30" data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-responsive='{"0":{"items":1},"600":{"items":3},"1000":{"items":3}}'>
                                            <!-- sản phẩm 1 -->
                                            @if($best)
                                                @foreach($best as $item)
                                                <li>
                                                    <div class="left-block">
                                                        <a href="{{ url('/detail/'.$item->id ) }}">
                                                            <img class="img-responsive" alt="product" src="{{url('uploads/product/'.$item->thumbnail)}}" style="width:268px  ; height:327px; " />
                                                        </a>
                                                        <div class="quick-view">
                                                            <a title="Add to my wishlist" class="heart" href="#"></a>
                                                            <a title="Add to compare" class="compare" href="#"></a>
                                                            <a title="Quick view" class="search" href="#"></a>
                                                        </div>
                                                        <div class="add-to-cart">
                                                            <a title="Add to Cart" href="{!! url('muahang',[$item->id]) !!}">Thêm vào giỏ hàng</a>
                                                        </div>
                                                        <div class="group-price">
                                                            <span class="product-new">MỚI</span>
                                                            <span class="product-sale">Giảm giá</span>
                                                        </div>
                                                    </div>
                                                    <div class="right-block">

                                                        <h5 class="product-name"><a href="#">{{$item->name}}</a></h5>
                                                        <div class="content_price">
                                                            <span class="price product-price">{{number_format($item->price * ($item->discount)   / 100)}}đ</span>
                                                            <span class="price old-price">{{ $item->price }}đ</span>
                                                        </div>
                                                        <div class="product-star">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-half-o"></i>
                                                        </div>
                                                    </div>
                                                </li>
                                                @endforeach
                                            @endif
                                            <!--end sản phẩm 1 -->

                                        </ul>
                                    </div>

                                    <div id="tab-2" class="tab-panel">
                                        <ul class="product-list owl-carousel"  data-dots="false" data-loop="true" data-nav = "true" data-margin = "30"  data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-responsive='{"0":{"items":1},"600":{"items":3},"1000":{"items":3}}'>
                                          @if($catediscount)
                                            @foreach($catediscount as $item)
                                            <li>
                                                <div class="left-block">
                                                    <a href="{{ url('/detail/'.$item->id ) }}">
                                                        <img class="img-responsive" alt="product" src="{{url('uploads/product/'.$item->thumbnail)}}"  style="width:268px  ; height:327px; " />
                                                    </a>                                                    <div class="quick-view">
                                                        <a title="Add to my wishlist" class="heart" href="#"></a>
                                                        <a title="Add to compare" class="compare" href="#"></a>
                                                        <a title="Quick view" class="search" href="#"></a>
                                                    </div>
                                                    <div class="add-to-cart">
                                                        <a title="Add to Cart" href="{!! url('muahang',[$item->id]) !!}">Thêm vào giỏ hàng</a>
                                                    </div>
                                                </div>
                                                <div class="right-block">
                                                    <h5 class="product-name"><a href="#">{{$item->name}}</a></h5>
                                                    <div class="content_price">
                                                        <span class="price product-price">{{number_format($item->price * ($item->discount)   / 100)}}đ</span>
                                                        <span class="price old-price">{{ $item->price }}đ</span>
                                                    </div>
                                                    <div class="product-star">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-half-o"></i>
                                                    </div>
                                                </div>
                                            </li>
                                            @endforeach
                                          @endif

                                        </ul>
                                    </div>

                                    <div id="tab-3" class="tab-panel">
                                        <ul class="product-list owl-carousel"  data-dots="false" data-loop="true" data-nav = "true" data-margin = "30"  data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-responsive='{"0":{"items":1},"600":{"items":3},"1000":{"items":3}}'>
                                            @if($cate)
                                                @foreach($cate as $item)
                                                    <li>
                                                        <div class="left-block">
                                                            <a href="{{ url('/detail/'.$item->id ) }}">
                                                                <img class="img-responsive" alt="product" src="{{url('uploads/product/'.$item->thumbnail)}}"  style="width:268px  ; height:327px; " />
                                                            </a>                                                    <div class="quick-view">
                                                                <a title="Add to my wishlist" class="heart" href="#"></a>
                                                                <a title="Add to compare" class="compare" href="#"></a>
                                                                <a title="Quick view" class="search" href="#"></a>
                                                            </div>
                                                            <div class="add-to-cart">
                                                                <a title="Add to Cart" href="{!! url('muahang',[$item->id]) !!}">Thêm vào giỏ hàng</a>
                                                            </div>
                                                        </div>
                                                        <div class="right-block">
                                                            <h5 class="product-name"><a href="#">{{$item->name}}</a></h5>
                                                            <div class="content_price">
                                                                <span class="price product-price">{{number_format($item->price * ($item->discount)   / 100)}}đ</span>
                                                                <span class="price old-price">{{ $item->price }}đ</span>
                                                            </div>
                                                            <div class="product-star">
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star-half-o"></i>
                                                            </div>
                                                        </div>
                                                    </li>
                                                @endforeach
                                            @endif

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-3 page-top-right">
                            <div class="latest-deals">
                                <h2 class="latest-deal-title">SẢN PHẨM MỚI</h2>
                                <div class="latest-deal-content">
                                    <ul class="product-list owl-carousel" data-dots="false" data-loop="true" data-nav = "true" data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-responsive='{"0":{"items":1},"600":{"items":3},"1000":{"items":1}}'>
                                     @if($cate)
                                        @foreach($cate as $item)
                                             <li>
                                            <div class="count-down-time" data-countdown="2015/06/27"></div>
                                            <div class="left-block">
                                                <a href="{{ url('/detail/'.$item->id ) }}">
                                                    <img class="img-responsive" alt="product" src="{{url('uploads/product/'.$item->thumbnail)}}" style="width:268px  ; height:327px; "  />
                                                </a>
                                                <div class="quick-view">
                                                    <a title="Add to my wishlist" class="heart" href="#"></a>
                                                    <a title="Add to compare" class="compare" href="#"></a>
                                                    <a title="Quick view" class="search" href="#"></a>
                                                </div>
                                                <div class="add-to-cart">
                                                    <a title="Add to Cart" href="{!! url('muahang',[$item->id]) !!}">Thêm vào giỏ hàng</a>
                                                </div>
                                            </div>
                                            <div class="right-block">
                                                <h5 class="product-name"><a href="#">{{$item->name}}</a></h5>
                                                <div class="content_price">
                                                    <span class="price product-price">{{number_format($item->price * ($item->discount)   / 100)}}đ</span>
                                                    <span class="price old-price">{{ $item->price }} đ</span>
                                                    <span class="colreduce-percentage">(-10%)</span>
                                                </div>
                                            </div>
                                        </li>
                                        @endforeach
                                     @endif
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!---->
            <div class="content-page">
                <div class="container">
                    <!-- featured category fashion -->
                    {{--@foreach($data as $cItem)--}}
                        <div class="category-featured" style="margin-top: -28px;">
                            <div class="category-banner">
                            </div>
                            <!--  THỜI TRANG NỮ -->
                            <div class="category-featured">
                                <nav class="navbar nav-menu nav-menu-red show-brand">
                                    <div class="container">
                                        <!-- Brand and toggle get grouped for better mobile display -->
                                        <div class="navbar-brand"><a href="#"><img alt="fashion" src="assets/data/fashion.png" />HÀNG MỚI VỀ</a></div>
                                        <span class="toggle-menu"></span>
                                        <!-- Collect the nav links, forms, and other content for toggling -->
                                    </div><!-- /.container-fluid -->
                                    <div id="elevator-1" class="floor-elevator">
                                        <a href="#" class="btn-elevator up disabled fa fa-angle-up"></a>
                                        <a href="#elevator-2" class="btn-elevator down fa fa-angle-down"></a>
                                    </div>
                                </nav>
                                <!--  THỜI TRANG NỮ -->
                                <div class="product-featured clearfix">
                                    <div class="banner-featured">
                                        <div class="featured-text"><span>Đặc sắc</span></div>
                                        <div class="banner-img">
                                            <a href="#"><img alt="Featurered 1" src="{{url('uploads/product/d31b7d_simg_b5529c_250x250_maxb.JPG')}}"  style=" width:234px  ; height:280px;  " /></a>
                                        </div>
                                    </div>
                                    <div class="product-featured-content">
                                        <div class="product-featured-list">
                                            <div class="tab-container">
                                                <!-- tab product -->
                                                <div class="tab-panel active" id="tab-4">
                                                    <ul class="product-list owl-carousel"  data-dots="false" data-loop="true" data-nav = "true" data-margin = "30"  data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-responsive='{"0":{"items":1},"600":{"items":3},"1000":{"items":3}}'>
                                                        @if($cate)
                                                            @foreach($cate as $item)
                                                                <li>
                                                                    <div class="left-block">
                                                                        <a href="{{ url('/detail/'.$item->id ) }}">
                                                                            <img class="img-responsive" alt="product" src="{{url('uploads/product/'.$item->thumbnail)}}"  style="width:250px  ; height:280px; " />
                                                                        </a>                                                    <div class="quick-view">
                                                                            <a title="Add to my wishlist" class="heart" href="#"></a>
                                                                            <a title="Add to compare" class="compare" href="#"></a>
                                                                            <a title="Quick view" class="search" href="#"></a>
                                                                        </div>
                                                                        <div class="add-to-cart">
                                                                            <a title="Add to Cart" href="{!! url('muahang',[$item->id]) !!}">Thêm vào giỏ hàng</a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="right-block">
                                                                        <h5 class="product-name"><a href="#">{{$item->name}}</a></h5>
                                                                        <div class="content_price">
                                                                            <span class="price product-price">{{number_format($item->price * ($item->discount)   / 100)}}đ</span>
                                                                            <span class="price old-price">{{ $item->price }}đ</span>
                                                                        </div>
                                                                        <div class="product-star">
                                                                            <i class="fa fa-star"></i>
                                                                            <i class="fa fa-star"></i>
                                                                            <i class="fa fa-star"></i>
                                                                            <i class="fa fa-star"></i>
                                                                            <i class="fa fa-star-half-o"></i>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            @endforeach
                                                        @endif

                                                    </ul>
                                                </div>
                                                <!-- tab product -->
                                                {{--<div class="tab-panel" id="tab-5">--}}
                                                    {{--<ul class="product-list owl-carousel"  data-dots="false" data-loop="true" data-nav = "true" data-margin = "30"  data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-responsive='{"0":{"items":1},"600":{"items":3},"1000":{"items":3}}'>--}}
                                                        {{--@if($cate)--}}
                                                            {{--@foreach($cate as $item)--}}
                                                                {{--<li>--}}
                                                                    {{--<div class="left-block">--}}
                                                                        {{--<a href="{{ url('/detail/'.$item->id ) }}">--}}
                                                                            {{--<img class="img-responsive" alt="product" src="{{url('uploads/product/'.$item->thumbnail)}}" />--}}
                                                                        {{--</a>                                                    <div class="quick-view">--}}
                                                                            {{--<a title="Add to my wishlist" class="heart" href="#"></a>--}}
                                                                            {{--<a title="Add to compare" class="compare" href="#"></a>--}}
                                                                            {{--<a title="Quick view" class="search" href="#"></a>--}}
                                                                        {{--</div>--}}
                                                                        {{--<div class="add-to-cart">--}}
                                                                            {{--<a title="Add to Cart" href="{!! url('muahang',[$item->id]) !!}">Thêm vào giỏ hàng</a>--}}
                                                                        {{--</div>--}}
                                                                    {{--</div>--}}
                                                                    {{--<div class="right-block">--}}
                                                                        {{--<h5 class="product-name"><a href="#">{{$item->name}}</a></h5>--}}
                                                                        {{--<div class="content_price">--}}
                                                                            {{--<span class="price product-price">{{ $item->discount }} đ</span>--}}
                                                                            {{--<span class="price old-price">{{ $item->price }}đ</span>--}}
                                                                        {{--</div>--}}
                                                                        {{--<div class="product-star">--}}
                                                                            {{--<i class="fa fa-star"></i>--}}
                                                                            {{--<i class="fa fa-star"></i>--}}
                                                                            {{--<i class="fa fa-star"></i>--}}
                                                                            {{--<i class="fa fa-star"></i>--}}
                                                                            {{--<i class="fa fa-star-half-o"></i>--}}
                                                                        {{--</div>--}}
                                                                    {{--</div>--}}
                                                                {{--</li>--}}
                                                            {{--@endforeach--}}
                                                        {{--@endif--}}

                                                    {{--</ul>--}}

                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    {{--@endforeach--}}
                    <!-- end THỜI TRANG NỮ -->

                    <!-- Banner bottom -->
                    <!-- <div class="row banner-bottom"> -->
                    <div class="col-sm-6" style="margin: 30px 0px 0px -15px;">
                        <div class="banner-boder-zoom">
                            <a href="#"><img alt="ads" class="img-responsive" src="{{ url('img/bannerffff.jpg') }}" /></a>
                        </div>
                    </div>
                    <div class="col-sm-6" style="margin: 30px 0px 0px -15px;">
                        <div class="banner-boder-zoom">
                            <a href="#"><img alt="ads" class="img-responsive" src="{{ url('img/banner-top-landing.jpg') }}" /></a>
                        </div>
                    </div>
                </div>
                <!-- end dịch vụ -->
                <!-- end banner bottom -->
            </div>
        </div>

    </div>
<div class="container">
    <div class="brand-showcase">
        <h2 class="brand-showcase-title">
            GIỚI THIỆU THƯƠNG HIỆU
        </h2>
        <div class="brand-showcase-box">
            <ul class="brand-showcase-logo owl-carousel" data-loop="true" data-nav = "true" data-dots="false" data-margin = "1" data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-responsive='{"0":{"items":2},"600":{"items":5},"1000":{"items":8}}'>
               @foreach($supplier as $item)
                    <li data-tab="showcase-9" class="item" style="border: 1px; padding: 5px; text-align: center; font-size: 18px;"><b>{{$item->name}}</b></li>
                @endforeach
            </ul>
            <div class="brand-showcase-content">
                <div class="brand-showcase-content-tab active" id="showcase-1">
                    <div class="row">
                        <div class="col-xs-12 col-sm-4 trademark-info">
                            <div class="trademark-logo">
                                <a href="#"><img src="assets/data/trademark.jpg" alt="trademark"></a>
                            </div>
                            <div class="trademark-desc">
                                Ngoài các sản phẩm bán lẻ trên website, koreanshop còn nhận thiết kế đồng phục nữ công sở cho các đơn vị với số lượng tối thiểu 40 chiếc/mẫu với mẫu thiết kế theo yêu cầu hoặc 10 chiếc/mẫu với mẫu có sẵn của koreanshop.                            </div>
                            <a href="#" class="trademark-link">shop this brand</a>
                        </div>
                        <div class="col-xs-12 col-sm-8 trademark-product">
                            <div class="row">
                                @if($cate)
                                    @foreach($cate as $item)
                                <div class="col-xs-12 col-sm-6 product-item">
                                    <div class="image-product hover-zoom">
                                        <a href="#"><img class="img-repon" src="{{url('uploads/product/'.$item->thumbnail)}}" alt="" style=" width: 230px; height: 200px;"></a>
                                    </div>
                                    <div class="info-product">
                                        <a href="#">
                                            <h5>{{$item->name}}</h5>
                                        </a>
                                        <span class="price product-price">{{number_format($item->price * ($item->discount)   / 100)}}đ</span>
                                        <div class="product-star">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                </div>
                                    @endforeach
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
    <!-- DANH MỤC HOT -->
    <!-- Footer -->
@include('partials.footer')

</body>
</html>