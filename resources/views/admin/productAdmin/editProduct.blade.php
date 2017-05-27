@extends('templates.dashboards')
@section('title')
 Cập nhật sản phẩm
@endsection
@section('content')
    <div id="page-wrapper">
        <div id="page-wrapper">
            <div class="row">
                <!-- page header -->
                <div class="col-lg-12" style="margin-left: -280px;">
                    <h1 class="page-header">Sửa sản phẩm "{{$row->name}}"</h1>
                </div>
              
            </div>
              @include('partials.showError')
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default" style="margin-left: -280px;">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-10">
                                    {!! Form::model($row, ['method' => 'PATCH',
                                        'url' => ['admin/product',$row->id],
                                     'role' =>'form', 'files' => true]) !!}
                                    <div class="form-group">
                                        <label for="txtname">Tên sản phẩm:</label>
                                        <input name="name" id="txtname" class="form-control" value="{{$row->name}}">
                                        <label for="txtname">Danh mục</label><br/>
                                        <select class="form-control" name="category_id">
                                            @foreach($categories as $category)
                                                @if($category->id == $row->category_id)
                                                    <option value="{{$category->id}}" selected>{{$category->name}}</option>
                                                @else
                                                    <option value="{{$category->id}}">{{$category->name}}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                        <label for="slnn">Nhà cung cấp</label><br/>
                                        <select class="form-control" name="supplier_id">
                                            @foreach($suppliers as $supplier)
                                                @if($supplier->id == $row->supplier_id)
                                                    <option value="{{$supplier->id}}" selected>{{$supplier->name}}</option>
                                                @else
                                                    <option value="{{$supplier->id}}">{{$supplier->name}}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                        <label for="txtGia">Giá sản phẩm:</label>
                                        <input name="price" id="txtGia" class="form-control" value="{{$row->price}}">
                                       
                                        <label for="txtGiamGia">Giảm giá:</label>
                                        <input name="discount" id="txtGiamGia" class="form-control"
                                               value="{{$row->discount}}">
                                        <label for="txtSoluong">Số lượng:</label>
                                        <input name="quantity" id="txtSoluong" class="form-control"
                                               value="{{$row->quantity}}">

                                        <!-- <label for="cbStatus">Trạng thái:</label>
                                        <input type="checkbox" name="available" id="cbStatus"
                                               style="font-size: 15px; height: 23px;width: 49px;margin-top: 15px;" @if($row->available=='1') {{'checked'}} @endif> -->
                                       
                                        <label for="txtAnhDd">Ảnh đại diện:</label>
                                        <input name="thumbnail" id="txtAnhDd" type="file">
                                        <div>
                                                <img src="{{url('/uploads/product/'.$row->thumbnail)}}" width="100px"
                                                     height="100px">
                                        </div>
                                         <div>
                                                <label for="txtAnhCT">Ảnh chi tiết:</label>
                                                <input name="txtAnhCT[]" id="txtAnhCT" type="file" multiple="multiple">
                                        </div>


                                       

                                           

                                        <label for="txtMotangan">Mô tả ngắn:</label>
                                        <textarea name="short_description" id="txtMotangan" class="form-control ckeditor" style="height: 200px;">{{$row->short_description}}</textarea>

                                        <label for="txtMotangan">Mô tả:</label>
                                        <textarea name="description" id="txtMota" class="form-control ckeditor" style="height: 200px;">{{$row->description}}</textarea>
                                   <br>
                                    <button type="submit" class="btn btn-primary">Sửa sản phẩm</button>
                                </div>
                                
                                {!! Form::close() !!}
                                       
                                <br/>
                                </div>
                                <div style="clear: both; float: left;"></div>

                              
                                    <div style="width: 450px; height: 200px;">
                                     <h2>Ảnh chi tiết SP</h2>
                                            @foreach($row->images as $img)
                                                {!! Form::open(['method' => 'DELETE', 'url' => ['admin/image', $img->id], 'class' => 'frmRemove' ]) !!}

                                                <div style="position: relative; width: 100px; height: auto; float: left">
                                                    <button type="submit" style="color: #000; display: block; width: 20px; padding-bottom:4px; height: 25px; border-radius: 20px; position: absolute; top: 0; right: 0" onclick="return confirm('Bạn có chắc chắn muốn xóa không');"> x </button>
                                                    <img src="{{url('/uploads/product/'.$img->url)}}" width="100px" height="100px" />
                                                </div>
                                                {!! Form::close() !!}
                                @endforeach
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
