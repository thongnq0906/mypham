@extends('templates.homecategories')

@section('head-of-page')

@stop
@section('title')
     Chi Tiết Sản Phẩm
@endsection
@section('sidebar-left')

@stop

@section('content')
    <div class="columns-container">
        <div class="container" id="columns">
            <!-- breadcrumb -->
            <div class="breadcrumb clearfix">
                <a class="home" href="{{ url('/') }}" title="Trang chủ">Trang chủ</a>
                <span class="navigation-pipe">&nbsp;</span>
                <a href="{{ url('/product') }}" title=" Sản Phẩm"> Sản Phẩm</a>
                <span class="navigation-pipe">&nbsp;</span>
                <a href="javascript:;" title="Chi Tiết Sản Phẩm"> Chi Tiết Sản Phẩm</a>
            </div>
            <!-- ./breadcrumb -->
            <!-- row -->
            <div class="row">
                <!-- Left colunm -->
                <div class="column col-xs-12 col-sm-3" id="left_column">
                    <!-- block category -->

                    <!-- ./block category  -->
                    <!-- block best sellers -->
                    <div class="block left-module">
                        <p class="title_block">XU HƯỚNG</p>
                        <div class="block_content">
                            <div class="owl-carousel owl-best-sell" data-loop="true" data-nav = "false" data-margin = "0" data-autoplayTimeout="1000" data-autoplay="true" data-autoplayHoverPause = "true" data-items="1">
                                <ul class="products-block best-sell">
                                    <li>
                                        <div class="products-block-left">
                                            <a href="#">
                                                <img src="{{ url('img/ef911d_simg_b5529c_250x250_maxb.jpg') }}" alt="SPECIAL PRODUCTS">
                                            </a>
                                        </div>
                                        <div class="products-block-right">
                                            <p class="product-name">
                                                <a href="#"></a>
                                            </p>
                                            <p class="product-price">450000 đ</p>
                                            <p class="product-star">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-half-o"></i>
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="products-block-left">
                                            <a href="#">
                                                <img src="{{ url('img/078505_simg_b5529c_250x250_maxb.jpg') }}" alt="SPECIAL PRODUCTS">
                                            </a>
                                        </div>
                                        <div class="products-block-right">
                                            <p class="product-name">
                                                <a href="#"></a>
                                            </p>
                                            <p class="product-price">450000 đ</p>
                                            <p class="product-star">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-half-o"></i>
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="products-block-left">
                                            <a href="#">
                                                <img src="{{ url('img/666d35_simg_b5529c_250x250_maxb.jpg') }}" alt="SPECIAL PRODUCTS">
                                            </a>
                                        </div>
                                        <div class="products-block-right">
                                            <p class="product-name">
                                                <a href="#"></a>
                                            </p>
                                            <p class="product-price">450000 đ</p>
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
                                <ul class="products-block best-sell">
                                    <li>
                                        <div class="products-block-left">
                                            <a href="#">
                                                <img src="{{ url('img/f357ef_simg_b5529c_250x250_maxb.jpg') }}" alt="SPECIAL PRODUCTS">
                                            </a>
                                        </div>
                                        <div class="products-block-right">
                                            <p class="product-name">
                                                <a href="#"></a>
                                            </p>
                                            <p class="product-price">450000 đ</p>
                                            <p class="product-star">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-half-o"></i>
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="products-block-left">
                                            <a href="#">
                                                <img src="{{ url('img/WGYup2_simg_b5529c_250x250_maxb.jpg') }}" alt="SPECIAL PRODUCTS">
                                            </a>
                                        </div>
                                        <div class="products-block-right">
                                            <p class="product-name">
                                                <a href="#"></a>
                                            </p>
                                            <p class="product-price">450000 đ</p>
                                            <p class="product-star">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-half-o"></i>
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="products-block-left">
                                            <a href="#">
                                                <img src="{{ url('img/4ce1f9_simg_b5529c_250x250_maxb.jpg') }}" alt="SPECIAL PRODUCTS">
                                            </a>
                                        </div>
                                        <div class="products-block-right">
                                            <p class="product-name">
                                                <a href="#"></a>
                                            </p>
                                            <p class="product-price">450000 đ</p>
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
                    </div>
                    <!-- ./block best sellers  -->
                    <div class="block left-module">
                        <p class="title_block"><b>Tóc giả bán chạy</b></p>
                    <!-- left silide -->
                        <div class="col-left-slide left-module">
                            <ul class="owl-carousel owl-style2" data-loop="true" data-nav = "false" data-margin = "0" data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-items="1" data-autoplay="true">
                                <li><a href="#"><img src="{{ url('img/idWBoN_simg_39b7ae_557-557-85-47_cropf_simg_b5529c_250x250_maxb.png') }}" alt="slide-left"></a></li>
                                <li><a href="#"><img src="{{ url('img/JuJUcH_simg_b5529c_250x250_maxb.png') }}" alt="slide-left"></a></li>
                                <li><a href="#"><img src="{{ url('img/84qxx2_simg_b5529c_250x250_maxb.jpg') }}" alt="slide-left"></a></li>
                            </ul>
                        </div>
                    </div>
                    <!--./left silde-->
                    <!-- block best sellers -->
                    <div class="block left-module">
                        <p class="title_block">ON SALE</p>
                        <div class="block_content product-onsale">
                            <ul class="product-list owl-carousel" data-loop="true" data-nav = "false" data-margin = "0" data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-items="1" data-autoplay="true">

                                <li>
                                    <div class="product-container">
                                        <div class="left-block">
                                            <a href="#">
                                                <img class="img-responsive" alt="product" src="{{  url('image/img/anhmau/anhmau1_1.jpg') }}" />
                                            </a>
                                            <div class="price-percent-reduction2">-30% OFF</div>
                                        </div>
                                        <div class="right-block">
                                            <h5 class="product-name"><a href="#">váy</a></h5>
                                            <div class="product-star">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-half-o"></i>
                                            </div>
                                            <div class="content_price">
                                                <span class="price product-price">687000 đ</span>
                                                <span class="price old-price">887000 đ</span>
                                            </div>
                                        </div>
                                        <div class="product-bottom">
                                            <a class="btn-add-cart" title="Add to Cart" href="#add">Add to Cart</a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="product-container">
                                        <div class="left-block">
                                            <a href="#">
                                                <img class="img-responsive" alt="product" src="{{  url('image/img/anhmau/anhmau2_2.jpg') }}" />
                                            </a>
                                            <div class="price-percent-reduction2">-30% OFF</div>
                                        </div>
                                        <div class="right-block">
                                            <h5 class="product-name"><a href="#">váy</a></h5>
                                            <div class="product-star">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-half-o"></i>
                                            </div>
                                            <div class="content_price">
                                                <span class="price product-price">687000 đ</span>
                                                <span class="price old-price">887000 đ</span>
                                            </div>
                                        </div>
                                        <div class="product-bottom">
                                            <a class="btn-add-cart" title="Add to Cart" href="#add">Add to Cart</a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="product-container">
                                        <div class="left-block">
                                            <a href="#">
                                                <img class="img-responsive" alt="product" src="{{  url('image/img/anhmau/anhmau4_4.jpg') }}" />
                                            </a>
                                            <div class="price-percent-reduction2">-30% OFF</div>
                                        </div>
                                        <div class="right-block">
                                            <h5 class="product-name"><a href="#">váy</a></h5>
                                            <div class="product-star">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-half-o"></i>
                                            </div>
                                            <div class="content_price">
                                                <span class="price product-price">687,000 đ</span>
                                                <span class="price old-price">887,000 đ</span>
                                            </div>
                                        </div>
                                        <div class="product-bottom">
                                            <a class="btn-add-cart" title="Add to Cart" href="#add">Add to Cart</a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- ./block best sellers  -->
                    <!-- left silide -->
                    <div class="col-left-slide left-module">
                        <div class="banner-opacity">
                            {{--<a href="#"><img src="{{ url('uploads/product/ads-banner.jpg') }}" alt="ads-banner" /></a>--}}
                        </div>
                    </div>
                    <!--./left silde-->
                </div>
                <!-- ./left colunm -->
                <!-- Center colunm-->
                <div class="center_column col-xs-12 col-sm-9" id="center_column">
                    <!-- Product -->
                    <div id="product">
                        <div class="primary-box row">
                            <div class="pb-left-column col-xs-12 col-sm-6" style="width: 330px;">
                                <!-- product-imge-->
                                <div class="product-image">
                                    <div class="product-full">
                                        <img id="product-zoom" src='{{ url('uploads/product/'.$product->thumbnail) }}' data-zoom-image="{{ url('uploads/product/big_'.$product->thumbnail) }}"/>
                                    </div>
                                    <div class="product-img-thumb" id="gallery_01">
                                        <ul class="owl-carousel" data-items="3" data-nav="true" data-dots="false" data-margin="20" data-loop="true">
                                            @foreach($product->images as $image)
                                                <li>
                                                    <a href="#" data-image="{{ url('uploads/product/'.$image->url) }}"
                                                       data-zoom-image="{{ url('uploads/product/'.$image->url) }}">
                                                        <img id="product-zoom"  src="{{ url('uploads/product/'.$image->url) }}" />
                                                    </a>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>
                                <!-- product-imge-->
                            </div>
                            <div class="pb-right-column col-xs-12 col-sm-6">
                                <h1 class="product-name"></h1>
                                <div class="product-comments">
                                    <div class="product-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half-o"></i>
                                    </div>
                                    <div class="comments-advices">
                                        <a href="#">{{ $product->name }}</a>
                                    </div>
                                </div>
                                <div class="product-price-group">
                                    <span class="price product-price">
                                        @if($product->discount > 0 )
                                             {{number_format($product->price * ($product->discount)   / 100)}}đ
                                        @else 
                                             {{number_format( $product->price )}}đ
                                        @endif
                                    </span>
                                    <span class="discount">{{ $product->discount }}%</span>
                                </div>
                                <div class="product-desc">
                                    {!! htmlspecialchars_decode($product->short_description) !!}
                                </div>
                                <div class="form-action">
                                    <div class="button-group">
                                        <a title="Add to Cart" href="{{url('muahang/'.$product->id)}}" style="color: deeppink; border: 1px;">Thêm vào giỏ hàng</a>
                                    </div>
                                </div>

                            </div>
                        </div>

                            <!-- tab product -->
                        <div class="product-tab">
                            <ul class="nav-tab">
                                <li class="active">
                                    <a aria-expanded="false" data-toggle="tab" href="#product-detail">Mô tả</a>
                                </li>
                                <li>
                                    <a aria-expanded="true" data-toggle="tab" href="#information">Đánh giá</a>
                                </li>
                            </ul>
                            <div class="tab-container">
                                <div id="product-detail" class="tab-panel active">
                                    {!! htmlspecialchars_decode($product->description) !!}
                                </div>
                                @if(!Auth::guest())
                                    <div id="fb-root"></div>
                                    <script>(function(d, s, id) {
                                            var js, fjs = d.getElementsByTagName(s)[0];
                                            if (d.getElementById(id)) return;
                                            js = d.createElement(s); js.id = id;
                                            js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8";
                                            fjs.parentNode.insertBefore(js, fjs);
                                        }(document, 'script', 'facebook-jssdk'));</script>
                                    <div class="fb-comments" data-href="http://localhost/mypham/public/detail/" data-numposts="5"></div>
                                @endif
                            </div>
                        </div>
                        <!-- ./tab product -->
                        <!-- box product -->
                        <div class="page-product-box">
                            <h3 class="heading">NHỮNG SẢM PHẨM TƯƠNG TỰ</h3>
                            <ul class="product-list owl-carousel" data-dots="false" data-loop="true" data-nav = "true" data-margin = "30" data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-responsive='{"0":{"items":1},"600":{"items":3},"1000":{"items":3}}'>
                                @foreach($pro as $item)
                                     <li>
                                    <div class="product-container">
                                        <div class="left-block">
                                            <a href="#">
                                                <img class="img-responsive" alt="product" src="{{url('uploads/product/'.$item->thumbnail)}}" />
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
                                            <div class="product-star">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-half-o"></i>
                                            </div>
                                            <div class="content_price">
                                                <span class="price product-price">
                                                    @if($item->discount > 0 )
                                                         {{number_format($item->price * ($item->discount)   / 100)}}đ
                                                    @else 
                                                         {{number_format( $item->price )}}đ
                                                    @endif
                                                </span>
                                                <span class="price old-price">{{$item->price}}đ</span>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                               @endforeach
                            </ul>
                            @if($pro->links())
                                {!! $pro->links() !!}
                            @endif
                        </div>
                        <!-- ./box product -->
                        <!-- box product -->

                        <!-- ./box product -->
                    </div>
                    <!-- Product -->
                </div>
                <!-- ./ Center colunm -->
            </div>
            <!-- ./row-->
        </div>
    </div>


@stop
