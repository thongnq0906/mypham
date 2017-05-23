@extends('templates.homecategories')

@section('head-of-page')

@stop
@section('title')
    Hóa Đơn
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
                <span class="navigation_page">Giỏ hàng của bạn</span>
            </div>
            <!-- ./breadcrumb -->
            <!-- page heading-->
            <h2 class="page-heading no-line">
                <span class="page-heading-title2">Giỏ hàng Tóm tắt</span>
            </h2>
            <!-- ../page heading-->
            <div class="page-content page-order">
                <ul class="step">
                    <li class="current-step"><span>01. Tóm lược</span></li>
                    <li><span>02. Đăng nhập</span></li>
                    <li><span>03. Địa chỉ</span></li>
                    <li><span>04. Đang chuyển hàng</span></li>
                    <li><span>05. Thanh toán</span></li>
                </ul>
                <div class="heading-counter warning">Giỏ hàng của bạn có chứa:
                </div>

                @if(Session::has('out_of_stock'))
                    <div class="container margin-top-10">
                        <div class="col-sm-12">
                            <div class="alert alert-warning red">
                                <b>{{ Session::get('out_of_stock') }}</b>
                            </div>
                        </div>
                    </div>
                @endif

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
                               {{ number_format($item->price) }}K
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
                                {{ number_format($item->price * $item->qty) }} K
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
                            <td colspan="2"><b style="color: red;">{{ Cart::subtotal(0, ".", ",") }} K</b></td>
                        </tr>
                        </tfoot>
                    </table>
                    <div class="cart_navigation">
                        <a class="prev-btn" href="{{ url('/') }}">Tiếp tục mua hàng</a>
                        <a class="next-btn" href="{{ url('/checkout') }}">Tiến hành kiểm tra</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
