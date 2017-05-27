
@extends('templates.dashboards')
@section('title')
 Thương hiệu
@endsection
@section('content')
    <div id="page-wrapper">

        <div class="row">
            <!-- Page Header -->
            <div class="col-lg-12">
                <h1 class="page-header">Thương hiệu</h1>
            </div>
            <!--End Page Header -->
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
                        <i class="fa fa-bar-chart-o fa-fw"></i>Danh sách Thương hiệu cung cấp
                        <div class="pull-right">
                            <div class="btn-group">
                                <a type="button" class="btn btn-default" href="{{url('admin/supplier/create')}}" style="background-color: #2ca02c;"><span class="glyphicon glyphicon-plus" style="color: white; font-weight: bold; font-size: 16px;"></span> Thêm mới</a>
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
                                            <th>Tên nhà cung cấp</th>
                                            <th>logo</th>
                                            <th>Email</th>
                                            <th>Số điện thoại</th>
                                            <th>Ngày tạo</th>
                                            <th>Hoạt động</th>
                                        </tr>
                                        </thead>
                                        <tbody>@foreach($list as $key=> $it)
                                            <tr>
                                                <td>{{$key + $list->firstItem() }}</td>
                                                <td>{{$it->name}}</td>
                                                <td>
                                                    <div>
                                                        <img src="{{url('/uploads/supplier/'.$it->logo)}}" width="80px"
                                                             height="80px">
                                                    </div>
                                                </td>
                                                <td> {{ $it->email }}</td>
                                                <td> {{ $it->phone }}</td>
                                                <td> {{ $it->created_at }}</td>
                                                <td>
                                                    {{Form::open([
                                                                    'method'=>'DELETE',
                                                                    'url'=>['admin/supplier',$it->id]
                                                                    ])}}
                                                    <a href="{{url('admin/supplier/'.$it->id.'/edit')}}" class="btn btn-primary">Sửa</a>
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
