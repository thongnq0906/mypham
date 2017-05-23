@extends('templates.homecategories')

@section('head-of-page')

@stop
@section('title')
  Giới Thiệu
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
                <span class="navigation_page">Giới thiệu</span>
            </div>
            <!-- ./breadcrumb -->
            <!-- row -->
            <div class="row">
                <!-- Left colunm -->
                <div class="column col-xs-12 col-sm-3" id="left_column">
                    <!-- block category -->
                    <div class="block left-module">
                        <p class="title_block">Thông tin</p>
                        <div class="block_content">
                            <!-- layered -->

                            <!-- ./layered -->
                        </div>
                    </div>
                    <!-- ./block category  -->
                    <!-- Banner silebar -->
                    <div class="block left-module">
                        <div class="banner-opacity">
                            <a href="#"><img src="{{url('img/BBi .jpg')}}" alt="ads-banner" style="width: 300px;"></a>
                        </div>
                    </div>
                    <!-- ./Banner silebar -->
                </div>
                <!-- ./left colunm -->
                <!-- Center colunm-->
                <div class="center_column col-xs-12 col-sm-9" id="center_column">
                    <!-- page heading-->
                    <h2 class="page-heading">
                        <span class="page-heading-title2">Đôi nét về KUTESHOP</span>
                    </h2>
                    <!-- Content page -->
                    <div class="content-text clearfix">

                        <img src="img/psdCosmetic5_zps1b946d64.jpg" class="alignleft" width="310" alt="">

                        <p>KOREANSHOP là nhãn hiệu thời trang của Công ty TNHH KOREANSHOP Việt Nam.
                            Ra đời đầu năm 2014, khi thị trường thời trang Việt Nam đã hội tụ đầy đủ
                            nhiều hãng thời trang tên tuổi ở các phân khúc khác nhau song chúng tôi
                            có những hướng đi riêng, những sản phẩm công sở trẻ trung, chất lượng tốt
                            với giá thành hấp dẫn, dịch vụ bán hàng online toàn quốc chắc chắn sẽ chiếm
                            được lòng tin của khách hàng.Trước sự bùng nổ của công nghệ thông tin, viễn
                            thông internet và điện thoại thông minh, KOREANSHOP chú trọng phát triển kênh bán
                            hàng và truyền thông qua internet nhằm mang lại tiện ích mua hàng mọi lúc, mọi
                            nơi cho tất cả các đối tượng.</p>
                        <p>Chúng tôi nỗ lực ở mọi công đoạn sản xuất và phân phối để đưa tới khách hàng
                            những sản phẩm thời trang chuyên nghiệp với giá rẻ nhất không hề thua kém các
                            sản phẩm thời trang tên tuổi. Thay vì các chương trình “khuyến mại ảo” giảm
                            giá 50-70% không hề thiết thực, KOREANSHOP đưa ra ngay một mức giá bán hợp lý trong
                            bất cứ thời điểm nào, các sản phẩm gần như không hề có tồn kho và “sale off ảo”.
                            Chúng tôi có những chương trình ưu đãi riêng cho các khách hàng thân thiết.</p>
                        <p>Các sản phẩm của KOREANSHOP bán trên website đều sử dụng các hình ảnh chân thực đúng mô tả,
                            chính sách đổi hàng uy tín.</p>
                        <p>Ngoài các sản phẩm bán lẻ trên website, KOREANSHOP còn nhận thiết kế đồng phục nữ công sở
                            cho các đơn vị với số lượng tối thiểu 40 chiếc/mẫu với mẫu thiết kế theo yêu cầu hoặc
                            10 chiếc/mẫu với mẫu có sẵn của KOREANSHOP.</p>
                        <p>Chúng tôi mong nhận được những phản hồi và góp ý chân thành từ quý khách hàng.</p>
                        <p>Cảm ơn quý khách đã quan tâm và ủng hộ KOREANSHOP. Chúc quý khách có những trải nghiệm mua
                            sắm thú vị tại KOREANSHOP!</p>

                    </div>
                    <!-- ./Content page -->
                </div>
                <!-- ./ Center colunm -->
            </div>
            <!-- ./row-->
        </div>
    </div>

@stop
