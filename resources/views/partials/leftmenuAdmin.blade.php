<nav class="navbar-default navbar-static-side" role="navigation">
    <!-- sidebar-collapse -->
    <div class="sidebar-collapse">
        <!-- side-menu -->
        <ul class="nav" id="side-menu">
            <li>
                <!-- user image section-->
                <div class="user-section">
                    <div class="user-section-inner">
                        <img src="{{url('AssetAdmin/assets/img/user.jpg')}}" alt="">
                    </div>
                    <div class="user-info">
                        <div><strong style="font-size: 15px;">{{ Auth::user()->name }}</strong></div>
                        <div class="user-text-online">
                            <span class="user-circle-online btn btn-success btn-circle "></span>&nbsp;Online
                        </div>
                    </div>
                </div>
                <!--end user image section-->
            </li>
            <li class="sidebar-search">
            </li>
            <li class="selected">
                <a href="{{url('admin/home')}}"><i class="fa fa-dashboard fa-fw"></i>Trang chủ</a>
            </li>
            <li>
                <a href="{{url('admin/category')}}"><i class="fa fa-bar-chart-o fa-fw"></i> Danh mục</a>
            </li>
            <li>
                <a href="{{url('admin/product')}}"><i class="fa fa-snowflake-o"></i> Sản phẩm</a>
            </li>
            <li>
                <a href="{{url('admin/supplier')}}"><i class="fa fa-table fa-fw"></i>Thương hiệu</a>
            </li>
             @if (Auth::user()->isAdmin() )
            <li>
                <a href="{{url('admin/user')}}"><i class="fa fa-user"></i> Người dùng</a>
            </li>
            <li>
                <a href="{{url('admin/order')}}"><i class="fa fa-first-order"></i>Hóa đơn</a>
            </li>
            @else 

            @endif
            <li>
                <a href="{{url('admin/new')}}"><i class="fa fa-clipboard"></i>Bài viết</a>
            </li>
            <li>
                <a href="{{url('admin/contact')}}"><i class="fa fa-phone"></i> Liên hệ</a>
            </li>

        </ul>
        <!-- end side-menu -->
    </div>
    <!-- end sidebar-collapse -->
</nav>