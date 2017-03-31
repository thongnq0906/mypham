
@extends('templates.dashboards')
@section('content')
    <div id="page-wrapper">

        <div class="row">
            <!-- Page Header -->
            <div class="col-lg-12">
                <h1 class="page-header">Sản Phẩm</h1>
            </div>
            <!--End Page Header -->
        </div>
        <div class="row" style="margin-bottom: 30px;">
            {!! Form::open(['method' => 'GET', 'url' => 'admin/product']) !!}
            <div class="col-md-6">
                <div class="input-group custom-search-form">
                    <input type="text" class="form-control" placeholder="Tên kiếm ...." name="keyword"
                           value="{{ (Request::has('keyword')) ? Request::get('keyword') : '' }}">
                    <span class="input-group-btn">
                            <button class="btn btn-default" type="submit">
                                <i class="fa fa-search"></i>
                            </button>
                        </span>
                </div>
            </div>
            {!! Form::close() !!}
        </div>
        @if(Session::has('success'))
            <div class="row">
                <!-- Welcome -->
                <div class="col-lg-12">
                    <div class="alert alert-info">
                        <i class="fa fa-folder-open"></i>
                        <b>{{Session::get('success')}}</b>
                    </div>
                </div>
                <!--end  Welcome -->
            </div>
        @endif

        <div class="row">
            <div class="col-lg-12 col-md-12">
                <!--Area chart example -->
                <!--End area chart example -->
                <!--Simple table example -->
                <div class="panel panel-primary">
                    <div class="panel-heading" style="line-height: 30px;">
                        <i class="fa fa-bar-chart-o fa-fw"></i>Danh sách sản phẩm
                        <div class="pull-right">
                            <div class="btn-group">
                                <a type="button" href="{{url('admin/product/create')}}" class="btn btn-default" style="background-color: #2ca02c;"><span class="glyphicon glyphicon-plus" style="color: white; font-weight: bold; font-size: 16px;"></span> Thêm mới</a>
                            </div>
                        </div>
                    </div>

                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped">
                                        <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Danh mục</th>
                                            <th>Nhà cung cấp</th>
                                            <th>Giá</th>
                                            <th>Ngày nhập</th>
                                            <th>Trạng thái</th>
                                            <th>Nội dung</th>
                                            <th>Số lượng</th>
                                            <th>Ảnh đại diện</th>
                                            <th>Giảm giá</th>
                                            <th>Hoạt động</th>
                                        </tr>
                                        </thead>
                                        <tbody>@foreach($list as $key=>$it)
                                            <tr>
                                                <td>{{$key+1}}</td>
                                                <td>{{$it->name}}</td>
                                                <td>
                                                    @if(!is_null($it->category))
                                                        {{$it->category->name}}
                                                    @endif
                                                </td>
                                                <td>
                                                    @if(!is_null($it->supplier))
                                                        {{$it->supplier->name}}
                                                    @endif
                                                </td>
                                                <td>{{$it->price}}</td>
                                                <td>{{$it->productdate}}</td>
                                                <td>{{$it->available}}</td>
                                                <td>{!! htmlspecialchars_decode($it->short_description) !!}</td>
                                                <td>{{$it->quantity}}</td>
                                                <td>
                                                    <div>
                                                        <img src="{{url('/uploads/product/'.$it->thumbnail)}}" width="100px"
                                                             height="100px">
                                                    </div>

                                                </td>
                                                <td>{{$it->discount}}</td>
                                                <td>
                                                    {{Form::open([
                                                                    'method'=>'DELETE',
                                                                    'url'=>['admin/product',$it->id]
                                                                    ])}}
                                                    <a href="{{url('admin/product/'.$it->id.'/edit')}}" class="btn btn-primary">Sửa</a>
                                                    <button type="submit" class="btn btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xóa không');">Xóa</button>
                                                    {{Form::close()}}
                                                </td>
                                            </tr>
                                        @endforeach
                                        </tbody>
                                    </table>
                                    @if($list->links())
                                        {!! $list->links() !!}
                                    @endif
                                </div>

                            </div>

                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!--End simple table example -->
            </div>
        </div>

    </div>
    <!-- end page-wrapper -->
@stop