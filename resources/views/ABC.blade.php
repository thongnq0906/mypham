<div class="category-featured">
    <nav class="navbar nav-menu nav-menu-red show-brand">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-brand"><a href="#"><img alt="fashion" src="assets/data/fashion.png" />THỜI TRANG NỮ</a></div>
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
                <a href="#"><img alt="Featurered 1" src="assets/data/f1.jpg" /></a>
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
                                                <img class="img-responsive" alt="product" src="{{url('uploads/product/'.$item->thumbnail)}}" />
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
                                                <span class="price product-price">{{ $item->discount }} đ</span>
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
                    <div class="tab-panel" id="tab-5">
                        <ul class="product-list owl-carousel"  data-dots="false" data-loop="true" data-nav = "true" data-margin = "30"  data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-responsive='{"0":{"items":1},"600":{"items":3},"1000":{"items":3}}'>
                            @if($cate)
                                @foreach($cate as $item)
                                    <li>
                                        <div class="left-block">
                                            <a href="{{ url('/detail/'.$item->id ) }}">
                                                <img class="img-responsive" alt="product" src="{{url('uploads/product/'.$item->thumbnail)}}" />
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
                                                <span class="price product-price">{{ $item->discount }} đ</span>
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
    </div>
</div>
