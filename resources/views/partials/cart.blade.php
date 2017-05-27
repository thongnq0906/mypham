

<div id="cart-block" class="col-xs-5 col-sm-2 shopping-cart-box">
    <a class="cart-link" href="{{url('/checkout')}}">
        <span class="title">Giỏ hàng</span>
        <span class="total">{{ Cart::count() }} Mặt hàng - {{ Cart::subtotal() }}đ</span>
        <span class="notify notify-left">{{ Cart::count() }}</span>
    </a>

    <div class="cart-block">
        <div class="cart-block-content">
           @if( Cart::count() > 0 )
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
                                <p class="p-rice">
                                @if( $cItem->options->discount > 0 )
                                     {{number_format( $cItem->price * (100 - $cItem->options->discount)/ 100)}}đ
                                     <!--  <span class="price old-price">{{ $cItem->price }} đ</span> -->
                                @else 
                                     {{number_format( $cItem->price )}}đ
                                @endif
                                </p>
                                <p>Qty: {{ $cItem->qty }}</p>
                            </div>
                        </li>
                    @endforeach
                </ul>
            </div>
            <div class="toal-cart">
                <span>Toàn bộ</span>
                <span class="toal-price pull-right">{{ Cart::subtotal() }}đ</span>
            </div>
            <div class="cart-buttons">
                <a href="{{url('/checkout')}}" class="btn-check-out">Kiểm tra</a>
            </div>
            @else 
               <h6 style="text-transform: uppercase; font-size: 10px; color: #4684f2;"> Bạn chưa có sản phẩm nào trong giỏ hàng </h6>
            @endif
        </div>
    </div>
</div>
