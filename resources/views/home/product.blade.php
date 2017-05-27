@extends('templates.homecategories')

@section('head-of-page')

@endsection
@section('title')
  Sản Phẩm
@endsection
@section('sidebar-left')

@endsection


@section('content')
    <div class="columns-container">
        <div class="container" id="columns">
            <!-- breadcrumb -->
            <div class="breadcrumb clearfix">
                <a class="home" href="{{ url('/') }}" title="Trang chủ">Trang chủ</a>
                <span class="navigation-pipe">&nbsp;</span>
                <span class="navigation_page">Sản phẩm</span>
            </div>
            <!-- ./breadcrumb -->
            <!-- row -->
            <div class="row">
                <!-- Left colunm -->
                <div class="column col-xs-12 col-sm-3" id="left_column">
                    <!-- block filter -->
                    <div class="block left-module">
                        <p class="title_block">LỰA CHỌN</p>
                        <div class="block_content">
                            <!-- layered -->
                            <div class="layered layered-filter-price">
                                <!-- filter categgory -->
                            <!-- ./filter color -->
                                <!-- ./filter brand -->
                                <div class="layered_subtitle" style="color: black;"><b>Khuyến mãi nhân dịp 8/3</b></div>
                                <div class="layered-content filter-brand">
                                    <ul class="check-box-list">
                                                <li> <img class="icon-menu" alt="Funky roots" src="{{url('img/e0374d2dff01e53d4a5a1eed00361862.png')}}"> &nbsp;&nbsp;
                                                    <input type="checkbox" id="brand1" name="cc" />
                                                    <label for="brand1" style="color:deeppink;">
                                                    </label>
                                                </li>
                                    </ul>
                                </div>
                                <!-- ./filter brand -->
                            </div>
                            <!-- ./layered -->

                        </div>
                    </div>
                    <!-- ./block filter  -->
                    <div class="block left-module">
                        <p class="title_block"><b>Sản phẩm đề cử</b></p>
                        <!-- left silide -->
                        <div class="col-left-slide left-module">
                            <ul class="owl-carousel owl-style2" data-loop="true" data-nav = "false" data-margin = "30" data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-items="1" data-autoplay="true">
                                <li><a href="#"><img src="{{url('img/eabf23_simg_b5529c_250x250_maxb.jpg')}}" alt="slide-left"></a></li>
                                <li><a href="#"><img src="{{url('img/c643ef_simg_63a662_340x340_maxb.jpg')}}" alt="slide-left"></a></li>
                                <li><a href="#"><img src="{{url('img/4e4f67_simg_b5529c_250x250_maxb.png')}}" alt="slide-left"></a></li>
                            </ul>
                        </div>
                    </div>
                    <!--./left silde-->
                    <!-- SPECIAL -->
                    <div class="block left-module">
                        <p class="title_block">Sản phẩm đặc biệt</p>
                        <div class="block_content">
                            <ul class="products-block">
                                <li>
                                    <div class="products-block-left">
                                        <a href="#">
                                            <img src="{{url('img/8a142f_simg_b5529c_250x250_maxb.jpg')}}" alt="SPECIAL PRODUCTS">
                                        </a>
                                    </div>
                                    <div class="products-block-right">
                                        <p class="product-name">
                                            <a href="#">Máy tạo kiểu tóc</a>
                                        </p>
                                        <p class="product-price">245,000đ</p>
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
                                    <a class="link-all" href="#">Tất cả sản phẩm</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="block left-module">
                        <p class="title_block">Chứng Thực</p>
                        <div class="block_content">
                            <ul class="testimonials owl-carousel" data-loop="true" data-nav = "false" data-margin = "30" data-autoplayTimeout="1000" data-autoplay="true" data-autoplayHoverPause = "true" data-items="1">
                                <li>
                                    <div class="client-mane">Giấu chức nhận</div>
                                    <div class="client-avarta">
                                        <img src="{{url('image/img/dauchungnhan.jpg')}}" alt="client-avarta">
                                    </div>
                                    <div class="testimonial">
                                        "Sản phẩm uy tín chất lượng"
                                    </div>
                                </li>
                                <li>
                                    <div class="client-mane">Giấu chức nhận</div>
                                    <div class="client-avarta">
                                        <img src="{{url('image/img/dauchungnhan.jpg')}}" alt="client-avarta">
                                    </div>
                                    <div class="testimonial">
                                        "Sản phẩm uy tín chất lượng"
                                    </div>
                                </li>
                                <li>
                                    <div class="client-mane">Giấu chức nhận</div>
                                    <div class="client-avarta">
                                        <img src="{{url('image/img/dauchungnhan.jpg')}}" alt="client-avarta">
                                    </div>
                                    <div class="testimonial">
                                        "Sản phẩm uy tín chất lượng"
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- ./Testimonials -->
                </div>
                <!-- ./left colunm -->
                <!-- Center colunm-->
                <div class="center_column col-xs-12 col-sm-9" id="center_column">
                    <!-- category-slider -->

                    <!-- ./category-slider -->

                    <!-- view-product-list-->
                    <div id="view-product-list" class="view-product-list">
                        <h2 class="page-heading">
                            <span class="page-heading-title">
                                @if(isset($cate))
                                    {{ $cate->name }}
                                @else
                                    SẢN PHẨM
                                @endif
                            </span>
                        </h2>
                        <ul class="display-product-option">
                            <li class="view-as-grid selected">
                                <span>grid</span>
                            </li>
                            <li class="view-as-list">
                                <span>list</span>
                            </li>
                        </ul>
                        <!-- PRODUCT LIST -->
                        @if($products->count() > 0)
                            <ul class="row product-list grid">
                                @foreach($products as $item)
                                    <li class="col-sx-12 col-sm-4">
                                        <div class="product-container">
                                            <div class="left-block">
                                                <a href="{{ url('/detail/'.$item->id ) }}">
                                                    <img class="img-responsive" alt="product" src="{{url('uploads/product/'.$item->thumbnail)}}" style="height: 300px; width: 300px;"/>
                                                </a>
                                             <!--  <div class="quick-view">
                                                    <a title="Add to my wishlist" class="heart" href="#"></a>
                                                    <a title="Add to compare" class="compare" href="#"></a>
                                                    <a title="Quick view" class="search" href="#"></a>
                                                </div> -->
                                                <div class="add-to-cart">
                                                    <a title="Add to Cart" href="{!! url('muahang',[$item->id]) !!}">Thêm vào giỏ hàng</a>
                                                </div>
                                                @if($item->discount > 1 )
                                                 <div class="group-price">
                                                        <span class="product-new">{{ $item->discount }} %</span>
                                                        <span class="product-sale">Giảm giá</span>
                                                 </div>
                                                @else 

                                                @endif
                                            </div>
                                            <div class="right-block">
                                                <h5 class="product-name">
                                                 <a href="{{ url('/detail/'.$item->id ) }}">
                                                  {{ $item->name }}
                                                 </a>
                                                </h5>
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
                                                             {{number_format($item->price * (100- $item->discount)   / 100)}}đ
                                                        @else 
                                                             {{number_format( $item->price )}}đ
                                                        @endif
                                                    </span>
                                                    <span class="price old-price">{{ $item->price }} đ</span>
                                                </div>
                                               <!--  <div class="info-orther">
                                                    <p>{{ $item->id }}</p>
                                                    <p class="availability">Khả dụng: <span>{{ $item->available }}</span></p>
                                                    <div class="product-desc">
                                                        {!! htmlspecialchars_decode($item->short_description ) !!}
                                                   </div>
                                               </div> -->
                                           </div>
                                       </div>
                                   </li>
                               @endforeach
                           </ul>
                       @else
                           <p>Không có sản phẩm nào....</p>
                       @endif
                       <!-- ./PRODUCT LIST -->
                       @if($products->links())
                           {!! $products->links() !!}
                       @endif
                    </div>
                    <!-- ./view-product-list-->

                </div>
                <!-- ./ Center colunm -->
            </div>
            <!-- ./row-->
        </div>
    </div>
@endsection
