@extends('templates.homecategories')

@section('head-of-page')

@stop
@section('title')
  Chi Tiết Blog
@endsection
@section('sidebar-left')

@stop

@section('content')
    <div class="columns-container">
        <div class="container" id="columns">
            <!-- breadcrumb -->
            <div class="breadcrumb clearfix">
                <a class="home" href="../" title="Return to Home">Trang chủ</a>
                <span class="navigation-pipe">&nbsp;</span>
                <a class="home" href="#" title="Blog">Blog_detail</a>
                {{--<span class="navigation-pipe">&nbsp;</span>--}}
                {{--<span> Ut pharetra augue nec augue integer rutrum ante eu lacus</span>--}}
            </div>
            <!-- ./breadcrumb -->
            <!-- row -->
            <div class="row">

                <!-- Left colunm -->
                    <div class="column col-xs-12 col-sm-3" id="left_column">
                        <!-- Blog category -->
                        <div class="block left-module">
                            <p class="title_block">TIN THỜI TRANG</p>
                            <div class="block_content">
                                <!-- layered -->
                                <div class="layered layered-category">
                                    <div class="layered-content">
                                        <ul class="tree-menu">
                                                <li><span></span><a href="{{ url('/blog') }}">Hot</a></li>
                                                <li><span></span><a href="{{ url('/blog') }}">Tin trong tháng</a></li>
                                                <li><span></span><a href="{{ url('/blog') }}">Tin nổi bật</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- ./layered -->
                            </div>
                        </div>
                        <!-- ./blog category  -->
                        <!-- Popular Posts -->
                        <div class="block left-module">
                            <div class="banner-opacity">
                                <a href="#"><img src="{{url('image/img/banner/banner12.jpg')}}" alt="ads-banner"></a>
                            </div>
                        </div>
                        <!-- Banner -->
                        <div class="block left-module">
                            <div class="banner-opacity">
                                <a href="#"><img src="{{url('image/img/banner/banner2.png')}}" alt="ads-banner"></a>
                            </div>
                        </div>
                        <!-- ./Banner -->
                    </div>
                    <!-- ./left colunm -->
                    <!-- Center colunm-->
                    <div class="center_column col-xs-12 col-sm-9" id="center_column">

                        <article class="entry-detail">
                            <div class="entry-photo">
                                <img src="{{url('uploads/new/'.$detail->image)}}" alt="Blog_detail" style="width:800px; height: 400px; ">
                            </div>
                            <h1 class="page-heading">
                                <span class="page-heading-title2">{{$detail->title}}</span>
                            </h1>
                            <div class="content-text clearfix">
                                {!! $detail->description !!}
                            </div>
                        </article>
                        <!-- Related Posts -->
                        <div class="single-box">
                            <h2>Bài viết được xem nhiều nhất</h2>
                            <ul class="related-posts owl-carousel" data-dots="false" data-loop="true" data-nav = "true" data-margin = "30" data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-responsive='{"0":{"items":1},"600":{"items":2},"1000":{"items":3}}'>
                                @foreach($datail_ds as $item)
                                    <li class="post-item">
                                        <article class="entry">
                                            <div class="entry-thumb image-hover2">
                                                <a href="{{ url('/blog_detail/'.$item->id ) }}">
                                                    <img src="{{url('uploads/new/'.$item->image)}}" alt="Blog" style="width: 345px; height: 180px;">
                                                </a>
                                            </div>
                                        </article>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                        <!-- ./Related Posts -->
                        <!-- Comment -->

                        <!-- ./Comment -->
                    </div>
                <!-- ./ Center colunm -->
            </div>
            <!-- ./row-->
        </div>
    </div>
@stop
