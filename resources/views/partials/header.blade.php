<div class="top-header">
    <div class="container">
        <div class="nav-top-links">
            <a class="first-item" href="#"><img alt="phone" src="{{url('assets/images/phone.png')}}" />00-62-658-658</a>
            <a href="{{url('/contact')}}"><img alt="email" src="{{url('assets/images/email.png')}}" />Liên lạc với chúng tôi hôm nay!</a>
        </div>

        {{--<div class="support-link">--}}
            {{--<a href="{{url('/contact')}}">Dịch vụ</a>--}}
            {{--<a href="{{url('/contact')}}">Hỗ trợ</a>--}}
        {{--</div>--}}

        <div id="user-info-top" class="user-info pull-right">
            <div class="dropdown">
                <a class="current-open" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#"><span>Tài khoản của tôi</span></a>
                <ul class="dropdown-menu mega_dropdown" role="menu">
                    <li>
                    @if (!Auth::user())
                        <li><a href="{{url('/register')}}">Đăng ký</a></li>
                        <li><a href="{{url('/login')}}">Đăng nhập</a></li>
                    @else
                        @if (Auth::user()->isAdmin() || Auth::user()->isEmployee() )
                            <li><a href="javascript:;">{{Auth::user()->name}}</a></li>
                            <li><a href="{{url('/admin')}}">Quản trị</a></li>
                        @else 
                            <li><a href="javascript:;">{{Auth::user()->name}}</a></li>  
                        @endif
                        {!! Form::open(['method' => 'POST', 'url' => 'logout']) !!}
                        <li><button type="submit" style="margin-left: 10px;" >Đăng xuất</button></li>
                        {!! Form::close() !!}
                    @endif
                    </li>

                </ul>
            </div>
        </div>
    </div>
</div>
<div class="container main-header">
    <div class="row">
        <div class="col-xs-12 col-sm-3 logo">
            <a href="{{url('/')}}"><img alt="Kute shop - GFXFree.Net" src="{{url('assets/images/logo12.png')}}" /></a>
        </div>
        <div class="col-xs-7 col-sm-7 header-search-box">
            {!! Form::open( ['method' =>'GET' ,'url' => 'product','class' => 'form-inline']) !!}
                <div class="form-group form-category">
                    <select class="select-category" name="category">
                        <option value="">Tất cả danh muc</option>
                        @if (isset($list[0]['list']))
                            @foreach($list[0]['list'] as $item)
                                @if (Request::has('category') && Request::get('category') == $item->id)
                                    <option value="{{ $item->id }}" selected="selected">{{ $item->name }}</option>
                                @else
                                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                                @endif
                            @endforeach
                        @endif
                    </select>
                </div>
                <div class="form-group input-serach" style="margin-left: 200px; margin-top: -54px;">
                    <input type="text" name="keyword" value="{{ Request::has('keyword') ? Request::get('keyword') : '' }}" placeholder="Tìm kiếm .....">
                </div>
                <button type="submit" class="pull-right btn-search"></button>
            {!! Form::close() !!}
        </div>
        @include('partials.cart')
    </div>
</div>