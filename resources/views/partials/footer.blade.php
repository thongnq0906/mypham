<footer id="footer">
    <div class="container">
        <!-- introduce-box -->
        <div id="introduce-box" class="row">
            <div class="col-md-3">
                <div id="address-box">
                    <a href="#"><img src="{{url('assets/images/logo12.png')}}" alt="" /></a>
                    <div id="address-list">
                        <div class="tit-name "> 
                         <span class="fa fa-map-marker"> </span>
                        </div>
                        <div class="tit-contain">
                         90 Nguyễn Lương Bằng-Q.Đống Đa-TP.Hà Nội
                        </div>
                        <div class="tit-name">
                         <span class="fa fa-phone"> </span>
                        </div>
                        <div class="tit-contain">+ 021.343.7575</div>
                        <div class="tit-name">
                            <span class="fa fa-envelope"></span>
                        </div>
                        <div class="tit-contain">nguyenthitien17061995@gmail.com</div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
            </div>
            <div class="col-md-3">
                <div id="contact-box">
                    <div class="introduce-title">Nhận Khuyến mại</div>
                    <div class="input-group" id="mail-box">
                        <input type="text" placeholder="Địa chỉ Email của bạn"/>
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">OK</button>
                          </span>
                    </div><!-- /input-group -->
                    <div class="introduce-title">mạng xã hội</div>
                    <div class="social-link">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-pinterest-p"></i></a>
                        <a href="#"><i class="fa fa-vk"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                    </div>
                </div>

            </div>

        </div><!-- /#introduce-box -->

        <!-- #trademark-box -->
        <!--   <div id="trademark-box" class="row"> -->

    </div>
    <!-- /#trademark-box -->

    <!-- #trademark-text-box -->
    <!--  <div id="trademark-text-box" class="row"> -->

    </div>
    </div>
    <!-- /#trademark-text-box -->
    <div id="footer-menu-box">
        <div class="col-sm-12">
            <ul class="footer-menu-list">
                <li><a href="#" >Thông tin công ty - Đối tác</a></li>
            </ul>
        </div>
        <div class="col-sm-12">
            <ul class="footer-menu-list">
                @if(isset($footer))
                    @foreach($footer as $item)
                        <li>{{$item->name}}</li>
                    @endforeach
                @endif
            </ul>
        </div>
        <p class="text-center">Copyrights &#169; 2017 korean Shop. All Rights Reserved. Designed by kuteshop.dev</p>
    </div><!-- /#footer-menu-box -->
    </div>
</footer>

<a href="#" class="scroll_top" title="Scroll to Top" style="display: inline;">Scroll</a>
<!-- Script-->
<script type="text/javascript" src="{{ url('assets/lib/jquery/jquery-1.11.2.min.js') }}"></script>
<script type="text/javascript" src="{{ url('assets/lib/bootstrap/js/bootstrap.min.js') }}"></script>
<script type="text/javascript" src="{{ url('assets/lib/select2/js/select2.min.js') }}"></script>
<script type="text/javascript" src="{{ url('assets/lib/jquery.bxslider/jquery.bxslider.min.js') }}"></script>
<script type="text/javascript" src="{{ url('assets/lib/owl.carousel/owl.carousel.min.js') }}"></script>
<script type="text/javascript" src="{{ url('assets/lib/jquery.countdown/jquery.countdown.min.js') }}"></script>
<script type="text/javascript" src="{{ url('assets/js/jquery.actual.min.js') }}"></script>
<script type="text/javascript" src="{{ url('assets/lib/jquery.elevatezoom.js') }}"></script>
<script type="text/javascript" src="{{ url('assets/lib/jquery-ui/jquery-ui.min.js') }}"></script>
<script type="text/javascript" src="{{ url('assets/lib/fancyBox/jquery.fancybox.js') }}"></script>
<script type="text/javascript" src="{{ url('assets/js/theme-script.js') }}"></script>
<script type="text/javascript" src="{{ url('ckeditor/ckeditor.js') }}"></script>
@yield('footer-js')