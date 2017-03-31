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
                <span class="navigation_page">Liên hệ</span>
            </div>
            <!-- ./breadcrumb -->
            <!-- page heading-->
            <h2 class="page-heading">
                <span class="page-heading-title2">Liên hệ với chúng tôi</span>
            </h2>

            @if(Session::has('contact'))
                <div class="container margin-top-10">
                    <div class="col-sm-3 slider-left"></div>
                    <div class="col-sm-9 header-top-right">
                        <div class="alert alert-warning red">
                            <b>{{ Session::get('contact') }}</b>
                        </div>
                    </div>
                </div>
            @endif

            <!-- ../page heading-->
            <div id="contact" class="page-content page-contact">
                <div id="message-box-conact"></div>
                <div class="row">
                    <div class="col-sm-6">
                        <h3 class="page-subheading">HÌNH THỨC LIÊN HỆ</h3>
                        <div class="contact-form-box">
                            {{Form::open( array('method'=>"POST" ,'url' => 'contact'))}}
                                <div class="form-selector">
                                    <label>Name</label>
                                    <input type="text" name="name" class="form-control input-sm" id="name" />
                                </div>
                                <div class="form-selector">
                                    <label>Địa chỉ email</label>
                                    <input type="text" name="email" class="form-control input-sm" id="email" />
                                </div>
                                <div class="form-selector">
                                    <label>Phone</label>
                                    <input type="text" name="phone" class="form-control input-sm" id="phone" />
                                </div>
                                <div class="form-selector">
                                    <label>Noi dung</label>
                                    <textarea class="form-control input-sm" name="message" rows="10" id="message"></textarea>
                                </div>
                                <div class="form-selector">
                                    <button type="submit" id="btn-send-contact" name="gui" class="btn">Gửi</button>
                                </div>
                            {{Form::close()}}
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6" id="contact_form_map">
                        <h3 class="page-subheading">Thông tin</h3>
                        <p>Cảm ơn quý khách đã quan tâm và ủng hộ KOREANSHOP. Chúc quý khách có những trải nghiệm mua sắm thú vị tại Koreanshop.com!</p>
                        <br/>
                        <ul>
                            <li>Các sản phẩm của KOREANSHOP bán trên website đều sử dụng các hình ảnh chân thực đúng mô tả, chính sách đổi hàng uy tín</li>
                            <li>Chúng tôi mong nhận được những phản hồi và góp ý chân thành từ quý khách hàng.</li>
                        </ul>
                        <br/>
                        <ul class="store_info">
                            <li><i class="fa fa-home"></i>90 Nguyễn Lương Bằng-Q.Đống Đa-TP.Hà Nội </li>
                            <li><i class="fa fa-phone"></i><span>+ 021.343.7575</span></li>
                            <li><i class="fa fa-phone"></i><span>+ 020.566.6666</span></li>
                            <li><i class="fa fa-envelope"></i>Email: <span><a href="mailto:%73%75%70%70%6f%72%74@%6b%75%74%65%74%68%65%6d%65.%63%6f%6d">nguyenthitien170601995@gmail.com</a></span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

@stop

