@extends('templates.homecategories')

@section('footer-js')
    <script type="text/javascript">
        $(document).ready(function () {
            $('#frmLogin').on('submit', function (e) {
                e.preventDefault();
                $.ajax({
                    url: $(this).attr('action'),
                    type: "POST",
                    data: $(this).serialize(),
                    success: function (data) {
                        $('#loginErrorMessage').html('').hide();
                        $('#loginBlock').hide();
                        location.reload();
                    },
                    statusCode: {
                        422: function(data) {
                            if (data.readyState == 4 && data.responseJSON.email != undefined) {
                                $('#loginErrorMessage').html(data.responseJSON.email).show();
                                $('#loginBlock').show();
                            }
                        }
                    },
                    error: function (xhr) {
                        /*if (xhr.readyState == 4 && xhr.responseJSON.email != undefined) {
                            $('#loginErrorMessage').html(xhr.responseJSON.email).show();
                            $('#loginBlock').show();
                        }*/
                        //console.log(xhr.message);
                    }
                });
            });
        });
    </script>
@endsection

@section('content')
    <div class="columns-container">
        <div class="container" id="columns">
            <!-- breadcrumb -->
            <div class="breadcrumb clearfix">
                <a class="home" href="../" title="Return to Home">Trang chủ</a>
                <span class="navigation-pipe">&nbsp;</span>
                <span class="navigation_page">Kiểm tra</span>
            </div>
            <h2 class="page-heading">
                <span class="page-heading-title2">KIểm tra</span>
            </h2>
            <!-- ../page heading-->
            <div class="page-content checkout-page">
                <h3 class="checkout-sep">1. Phương pháp kiểm tra
                </h3>
                <div class="box-border">
                    <div class="row">
                        <div class="col-sm-6">
                            <h4>Kiểm tra như là một khách hoặc Đăng ký</h4>
                            <p>Đăng ký với chúng tôi để thuận tiện trong tương lai:</p>
                            <ul>
                                <li><label><input type="radio" name="radio1">Thanh toán như Khách</label></li>
                                <li><label><input type="radio" name="radio1">Ghi danh</label></li>
                            </ul>
                            <br>
                            <h4>Đăng ký và tiết kiệm thời gian!</h4>
                            <p>Đăng ký với chúng tôi để thuận tiện trong tương lai:</p>
                            <p><i class="fa fa-check-circle text-primary"></i>  Nhanh chóng và dễ dàng kiểm tra ra</p>
                            <p><i class="fa fa-check-circle text-primary"></i> Dễ dàng truy cập vào lịch sử đơn hàng của bạn và tình trạng</p>
                        </div>

                        @if (!Auth::user())
                            <div id="loginBlock" class="col-sm-6">
                                <form role="form" method="POST" id="frmLogin" action="{{ route('login') }}">
                                    {{ csrf_field() }}
                                    <h4>Đăng nhập</h4>
                                    <p>Đã đăng ký? Xin hãy đăng nhập dưới đây:</p>
                                    <label for="emmail_login">Địa chỉ email</label>
                                    <input id="emmail_login" type="email" class="form-control" name="email" value="{{ old('email') }}" required autofocus>
                                    @if ($errors->has('email'))
                                        <p class="help-block">
                                            <strong>{{ $errors->first('email') }}</strong>
                                        </p>
                                    @endif

                                    <label for="password_login">Mật khẩu</label>
                                    <input id="password_login" type="password" class="form-control" name="password" required>
                                    @if ($errors->has('password'))
                                        <p class="help-block">
                                            <strong>{{ $errors->first('password') }}</strong>
                                        </p>
                                    @endif
                                    <p id="loginErrorMessage" style="color: red; display: none;" ></p>
                                    <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> Ghi nhớ đăng nhập
                                    <a class="btn btn-link" href="{{ route('password.request') }}">Quên mật khẩu?
                                    </a>

                                    <button type="submit" class="button">Đăng nhập</button>
                                    <button type="button" class="button" onclick="window.location.href='{{ url('/register') }}'">Đăng ký</button>
                                </form>
                            </div>
                        @endif
                    </div>
                </div>
                <h3 class="checkout-sep">2. Xem đơn hàng</h3>
                <div class="order-detail-content">
                    <table class="table table-bordered table-responsive cart_summary">
                        <thead>
                        <tr>
                            <th>Hình ảnh </th>
                            <th>Tên Sản Phẩm </th>
                            <th>Đơn giá </th>
                            <th width="15%">Số lượng </th>
                            <th>Thành Tiền </th>
                            <th >Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach(Cart::content() as $item)
                            <tr>
                                <td class="cart_product">
                                    <img src="{{ url('uploads/product/'.$item->options->img) }}" alt="Product" width="120"/>
                                </td>
                                <td class="cart_description">
                                    {{$item->name}}
                                </td>
                                <td class="price">
                                    {{ number_format($item->price) }} đ
                                </td>
                                <td class="qty">
                                    {!! Form::open(
                                    [
                                        'method' => 'POST',
                                        'url' => [ 'order/update', $item->id]
                                    ]
                                    ) !!}
                                    <input type="number" name="qty" value="{{$item->qty}}" width="30" maxlength="2" />
                                    <input type="submit" value="Cập nhật" />
                                    {!! Form::close() !!}
                                </td>
                                <td class="price">
                                    {{ number_format($item->price * $item->qty) }} đ
                                </td>
                                <td>
                                    <a href="{{ url('order/delete/'.$item->id) }}">Xóa </a> <br/>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                        <tfoot>
                        <tr>
                            <td colspan="2" rowspan="2"></td>
                            <td colspan="3">Tổng Tiền (bao gồm thuế)</td>
                            <td colspan="2"><b style="color: red;">{{ Cart::subtotal(0, ".", ",") }}  đ</b></td>
                        </tr>
                        </tfoot>
                    </table>
                </div>

                {!! Form::open(['method' => 'POST', 'url' => 'order/create', 'role' =>'form']) !!}
                    <h3 class="checkout-sep">3. Thông người nhận</h3>
                    <div class="box-border">
                        <ul>
                            <li class="row">
                                <div class="col-sm-6">
                                    <label for="first_name" class="required">Họ Tên</label>
                                    <input type="text" class="input form-control" name="name" id="first_name"
                                           value="@if(Auth::user() != null &&Auth::user()->name != null) {{ Auth::user()->name }} @endif" >
                                </div><!--/ [col] -->
                                <div class="col-sm-6">
                                    <label for="fax">Email</label>
                                    <input class="input form-control" type="text" name="email" id="email"
                                           value="@if(Auth::user() != null &&Auth::user()->email != null) {{ Auth::user()->email }} @endif">
                                </div><!--/ [col] -->
                            </li><!--/ .row -->
                            <li class="row">
                                <div class="col-sm-6">
                                    <label for="telephone" class="required">Số điện thoại</label>
                                    <input class="input form-control" type="text" name="phone" id="telephone"
                                           value="@if(Auth::user() != null &&Auth::user()->phone != null) {{ Auth::user()->phone }} @endif">
                                </div><!--/ [col] -->
                            </li><!--/ .row -->
                            <li class="row">
                                <div class="col-xs-12">
                                        <label for="address" class="required">Địa chỉ</label>
                                    <input type="text" class="input form-control" name="address" id="address"
                                           value="@if(Auth::user() != null &&Auth::user()->adderss != null) {{ Auth::user()->adderss }} @endif">

                                </div><!--/ [col] -->
                                <div class="col-2">
                                    <div class="woocommerce-shipping-fields">
                                        <h3>Thông tin thêm</h3>
                                        <p class="form-row form-row notes" id="order_comments_field">
                                            <label for="order_comments" class="">Ghi chú đơn hàng</label>
                                            <textarea name="order_comments" class="input-text "  style="  border: 1px solid #9BA2AB;  width: 1082px; height: 100px;" id="order_comments" placeholder="Ghi chú về đơn hàng, ví dụ: lưu ý khi giao hàng." rows="2" cols="5"></textarea></p>
                                    </div>
                                </div>
                            </li><!-- / .row -->
                        </ul>
                        <button type="submit" class="button pull-right">Đặt hàng</button>
                    </div>
                    <div class="cart_navigation">
                        <a class="prev-btn" href="/" style="color: red;">Tiếp tục mua hàng</a> |
                        <a class="next-btn" href="../checkout" style="color: red;">Tiến hành kiểm tra</a>
                    </div>
                {!! Form::close() !!}
            </div>
        </div>
    </div>

@stop

