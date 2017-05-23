<div id="cart-block" class="col-xs-5 col-sm-2 shopping-cart-box">
    <a class="cart-link" href="{{url('/order')}}">
        <span class="title">Giỏ hàng</span>
        <span class="total">{{ Cart::count() }} Mặt hàng - {{ Cart::total() }}đ</span>
        <span class="notify notify-left">{{ Cart::count() }}</span>
    </a>

    <div class="cart-block">
        <div class="cart-block-content">
            <h5 class="cart-title">{{ Cart::count() }} Các đề mục trong giỏ hàng của tôi</h5>
            <div class="cart-block-list">
                <ul>
                    @foreach(Cart::content() as $cItem)
                        <li class="product-info">
                            <div class="p-left">
                                <a href="{{url('/order')}}" class="remove_link"></a>
                                <a href="{{url('/order')}}">
                                    <img class="img-responsive" src="{{ url('uploads/product/'.$cItem->options->img) }}" alt="p10" />
                                </a>
                            </div>
                            <div class="p-right">
                                <p class="p-name">{{ $cItem->name }}</p>
                                <p class="p-rice">{{ $cItem->price }}đ</p>
                                <p>Qty: {{ $cItem->qty }}</p>
                            </div>
                        </li>
                    @endforeach
                </ul>
            </div>
            <div class="toal-cart">
                <span>Toàn bộ</span>
                <span class="toal-price pull-right">{{ Cart::total() }}đ</span>
            </div>
            <div class="cart-buttons">
                <a href="{{url('/public/checkout')}}" class="btn-check-out">Kiểm tra</a>
            </div>
        </div>
    </div>
</div>
