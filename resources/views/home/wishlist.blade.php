@extends('templates.homecategories')

@section('head-of-page')

@stop
@section('title')
  Khuyến Mại
@endsection
@section('sidebar-left')

@stop

@section('content')
        <div class="columns-container">
        <div class="container" id="columns">
            <!-- breadcrumb -->
            <div class="breadcrumb clearfix">
                <a class="home" href="{{url('/')}}" title="Return to Home">Trang chủ</a>
                <span class="navigation-pipe">&nbsp;</span>
                <a href="{{url('/wishlist')}}" title="Return to Home">Khuyến mãi</a>
                <span class="navigation-pipe">&nbsp;</span>
                <span class="navigation_page">Khuyến mãi</span>
            </div>
            <!-- ./breadcrumb -->
            <!-- row -->
            <div class="row">
                <!-- Left colunm -->
                <div class="column col-xs-12 col-sm-3" id="left_column">
                    <!-- block best sellers -->
                    <div class="block left-module">
                        <p class="title_block">Sản phẩm </p>
                        <div class="block_content">
                            <ul class="products-block best-sell">
                                <li>
                                    <div class="products-block-left">
                                        <a href="#">
                                            <img src="{{url('img/87a984_simg_63a662_340x340_maxb.jpg')}}" alt="SPECIAL PRODUCTS">
                                        </a>
                                    </div>
                                    <div class="products-block-right">
                                        <p class="product-name">
                                            <a href="#">dầu gội</a>
                                        </p>
                                        <p class="product-price">150000 đ</p>
                                        <p class="product-star">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half-o"></i>
                                        </p>
                                    </div>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <!-- ./block best sellers  -->

                    <!-- left silide -->
                    <div class="col-left-slide left-module">
                        <ul class="owl-carousel owl-style2" data-loop="true" data-nav = "false" data-margin = "30" data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-items="1" data-autoplay="true">
                            <li><a href="#"><img src="{{url('img/eabf23_simg_b5529c_250x250_maxb.jpg')}}" alt="slide-left"></a></li>
                            <li><a href="#"><img src="{{url('img/c643ef_simg_63a662_340x340_maxb.jpg')}}" alt="slide-left"></a></li>
                            <li><a href="#"><img src="{{url('img/4e4f67_simg_b5529c_250x250_maxb.png')}}" alt="slide-left"></a></li>
                        </ul>

                    </div>
                    <!-- ./block best sellers  -->
                    <div class="block left-module">
                        <p class="title_block">Sản phẩm đặc biệt</p>
                        <div class="block_content">
                            <ul class="products-block">

                                     <li>
                                    <div class="products-block-left">
                                        <a href="#">
                                            <img src="{{url('img/086b3f_simg_b5529c_250x250_maxb.jpg')}}" alt="SPECIAL PRODUCTS">
                                        </a>
                                    </div>
                                    <div class="products-block-right">
                                        <p class="product-name">
                                            <a href="#">Kem ủ tóc</a>
                                        </p>
                                        <p class="product-price">145000 đ</p>
                                        <p class="product-star">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half-o"></i>
                                        </p>
                                    </div>
                                </li>

                            </ul>
                            <div class="products-block">
                                <div class="products-block-bottom">
                                    <a class="link-all" href="{{url('/product')}}">All Products</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ./left colunm -->
                <!-- Center colunm-->
                <div class="center_column col-xs-12 col-sm-9" id="center_column">
                    <!-- page heading-->
                    <h2 class="page-heading">
                        <span class="page-heading-title2">Sản phẩm giảm giá</span>
                    </h2>
                    <!-- ../page heading-->
                    <ul class="row list-wishlist">

                        @foreach($wishlist_sp as $item)
                            <li class="col-sm-3">
                                <div class="product-img">
                                    <a href="#"><img src="{{ url('uploads/product/'.$item->thumbnail) }}" alt="Product" style="height: 250px; width: 300px;></a>
                                </div>
                                <h5 class="product-name">
                                    <a href="#">{{$item->name }}</a>
                                </h5>
                                <div class="qty">
                                    <label>Số lượng : {{$item->quantity}}</label>
                                </div>
                                <div class="add-to-cart" style="background-color: pink;">
                                    <a title="Add to Cart" href="{!! url('muahang',[$item->id]) !!}">Thêm vào giỏ hàng</a>
                                </div>
                            </li>
                        @endforeach
                            {{--{!! $wishlist_sp->render() !!}--}}
                            @if($wishlist_sp->links())
                                {!! $wishlist_sp->links() !!}
                            @endif
                    </ul>

                </div>
                <!-- ./ Center colunm -->
            </div>
            <!-- ./row-->
        </div>
    </div>
@stop
