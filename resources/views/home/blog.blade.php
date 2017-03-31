@extends('templates.homecategories')

@section('head-of-page')

@stop

@section('sidebar-left')

@stop

@section('content')
    <div class="columns-container">
        <div class="container" id="columns">
            <!-- breadcrumb -->
            <div class="breadcrumb clearfix">
                <a class="home" href="../" title="Return to Home">Trang chủ</a>
                <span class="navigation-pipe">&nbsp;</span>
                <span class="navigation_page">Sự kiện</span>
            </div>
            <!-- ./breadcrumb -->
            <!-- row -->
            <div class="row">
                <!-- Left colunm -->
                <div class="column col-xs-12 col-sm-3" id="left_column">
                    <!-- Blog category -->
                    <div class="block left-module">
                        <p class="title_block">SỰ KIỆN</p>
                        <div class="block_content">
                            <!-- layered -->
                            <div class="layered layered-category">
                                <div class="layered-content">
                                    <ul class="tree-menu">
                                        <li><span></span><a href="{{ url('/blog') }}">Sự kiện nổi bật</a></li>
                                        <li><span></span><a href="{{ url('/blog') }}">Sự kiện trong tháng</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- ./layered -->
                        </div>
                    </div>
                    <!-- ./blog category  -->
                    <!-- Popular Posts -->

                    <!-- ./Popular Posts -->
                    <!-- Banner -->
                    <div class="block left-module">
                        <div class="banner-opacity">
                            <a href="#"><img src="img/sakura.jpg" alt="ads-banner"></a>
                        </div>
                    </div>
                    <!-- ./Banner -->
                    <!-- Recent Comments -->
                    <div class="block left-module">
                        <p class="title_block">Bài viết phổ biến</p>
                        <div class="block_content">
                            <!-- layered -->
                            <div class="layered">
                                <div class="layered-content">
                                    <ul class="blog-list-sidebar clearfix">
                                        @foreach($cateblog as $item)
                                        <li>
                                            <div class="post-thumb">
                                                <a href="{{ url('/blog_detail/'.$item->id ) }}"><img src="{{url('uploads/new/'.$item->image)}}" alt="Blog" ></a>
                                            </div>
                                            <div class="post-info">
                                                <h5 class="entry_title"><a href="{{ url('/blog_detail/'.$item->id ) }}">{{$item->title}}</a></h5>
                                            </div>
                                        </li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                            <!-- ./layered -->
                        </div>
                    </div>
                    <!-- ./Recent Comments -->
                    <!-- tags -->
                    <!-- ./tags -->
                    <!-- Banner -->
                    <div class="block left-module">
                        <div class="banner-opacity">
                            <a href="#"><img src="img/61575e0464aba016f1e142efb8becab0.jpg" alt="ads-banner" style="width: 300px;"></a>
                        </div>
                    </div>
                    <!-- ./Banner -->
                </div>
                <!-- ./left colunm -->
                <!-- Center colunm-->
                <div class="center_column col-xs-12 col-sm-9" id="center_column">
                    <h2 class="page-heading">
                        <span class="page-heading-title2">Bài viết trên blog</span>
                    </h2>
                    <div class="sortPagiBar clearfix">
                        <span class="page-noite">Hiển thị 1 đến 7 trong 45 (15 Trang)</span>
                        <div class="bottom-pagination">
                            <nav>
                                <ul class="pagination">
                                    <li class="active">
                                        @if($blog->links())
                                            {!! $blog->links() !!}
                                        @endif
                                    </li>

                                </ul>
                            </nav>
                        </div>
                    </div>
                    <ul class="blog-posts">
                        @foreach($blog as $item)
                        <li class="post-item">
                            <article class="entry">
                                <div class="row">
                                    <div class="col-sm-5">
                                        <div class="entry-thumb image-hover2">
                                            <a href="{{ url('/blog_detail/'.$item->id ) }}">
                                                <img src="{{url('uploads/new/'.$item->image)}}" alt="Blog" style="width: 300px; height: 200px;">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-sm-7">
                                        <div class="entry-ci">
                                            <h3 class="entry-title" ><a href="{{ url('/blog_detail/'.$item->id ) }}" style="color:black;">{{$item->title}}</a></h3>
                                            <div class="entry-meta-data">
                                            <span class="author">
                                            <i class="fa fa-user"></i>
                                            Bởi: <a href="#">Quản trị viên</a></span>
                                                <span class="cat">
                                                <i class="fa fa-folder-o"></i>
                                                <a href="#">Mới, </a>
                                                <a href="#">Khuyến mãi</a>
                                            </span>
                                                <span class="comment-count">
                                                <i class="fa fa-comment-o"></i> 3
                                            </span>
                                            </div>
                                            <div class="post-star">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-half-o"></i>
                                            </div>
                                            <div class="entry-more">
                                                <a href="{{ url('/blog_detail/'.$item->id ) }}" style="color: black;background-color: red">Đọc thêm</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </article>
                        </li>
                        @endforeach
                    </ul>
                    <div class="sortPagiBar clearfix">
                        <div class="bottom-pagination">
                            <nav>
                                <ul class="pagination">
                                    <li class="active">
                                        @if($blog->links())
                                            {!! $blog->links() !!}
                                        @endif
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <!-- ./ Center colunm -->
            </div>
            <!-- ./row-->
        </div>
    </div>

@stop

