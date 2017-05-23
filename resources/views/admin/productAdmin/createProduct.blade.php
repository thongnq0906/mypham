@extends('templates.dashboards')
@section('title')
 Create Product
@endsection
@section('content')
    <div id="page-wrapper">
        <div id="page-wrapper">
            <div class="row">
                <!-- page header -->
                <div class="col-lg-12" style="margin-left: -280px;">
                    <h1 class="page-header">Thêm sản phẩm</h1>
                </div>
                <!--end page header -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default" style="margin-left: -280px;">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    {!! Form::open(['method' => 'POST','url' => 'admin/product', 'role' =>'form', 'files' => true]) !!}
                                    <div class="form-group">
                                        <label for="txtname">Tên sản phẩm:</label>
                                        <input name="txtname" id="txtname" class="form-control">
                                        <label for="txtname">Danh mục</label><br/>
                                        <select class="form-control" name="slParen">

                                            @foreach($categories as $category)
                                                <option value="{{ $category->id }}">{{ $category->name }}</option>
                                            @endforeach

                                        </select>
                                        <label for="slnn">Nhà cung cấp</label><br/>
                                        <select class="form-control" name="slnn">

                                            @foreach($suppliers as $supplier)
                                                <option value="{{$supplier->id}}">{{$supplier->name}}</option>
                                            @endforeach

                                            <?php /* Doan nay em confirm lai voi Luat nhe, trong model cua Cateogry lam gi co supplier dau ma call duoc */?>
                                        </select>
                                        <label for="txtGia">Giá sản phẩm:</label>
                                        <input name="txtGia" id="txtGia" class="form-control">
                                        <label for="txtNgayNhap">Ngày nhập:</label>
                                        <input type="date" name="txtNgayNhap" id="txtNgayNhap" class="form-control">
                                        <label for="txtGiamGia">Giảm giá:</label>
                                        <input name="txtGiamGia" id="txtGiamGia" class="form-control">
                                        <label for="txtSoluong">Số lượng:</label>
                                        <input name="txtSoluong" id="txtSoluong" class="form-control">
                                        <label for="txtsize">Kích cỡ:</label>
                                        <input name="txtsize" id="txtsize" class="form-control">
                                        <label for="txttype">Thuộc tính:</label>
                                        <input name="txttype" id="txttype" class="form-control">
                                        <label for="cbStatus">Trạng thái:</label>
                                        <input type="checkbox" name="cbStatus" id="cbStatus"
                                               style="font-size: 15px; height: 23px;width: 49px;margin-top: 15px;">

                                    </div>
                                    <button type="submit" class="btn btn-primary">Thêm sản phẩm</button>
                                </div>
                                <div class="col-md-6">
                                    <label for="txtMotangan">Mô tả ngắn:</label>
                                    <textarea name="txtMotangan" id="txtMotangan" class="form-control ckeditor"
                                              style="height: 200px;"></textarea>
                                    <label for="txtMota">Mô tả:</label>
                                    <textarea name="txtMota" id="txtMota" class="form-control ckeditor"
                                              style="height: 200px;"></textarea>
                                    <label for="txtAnhDd">Ảnh đại diện:</label>
                                    <input name="txtAnhDd" id="txtAnhDd" type="file">
                                    <label for="txtAnhCT">Ảnh chi tiết:</label>
                                    <input name="txtAnhCT[]" id="txtAnhCT" type="file" multiple="multiple">
                                </div>
                                {!! Form::close() !!}
                            </div>
                        </div>
                    </div>
                    <!-- End Form Elements -->
                </div>
            </div>
        </div>

    </div>
    <!-- end page-wrapper -->
@stop
