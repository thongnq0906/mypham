@extends('templates.dashboards')
@section('title')
 Danh mục
@endsection
@section('content')
    <div id="page-wrapper">

        <div class="row">
            <!-- Page Header -->
            <div class="col-lg-12">
                <h1 class="page-header">Danh mục</h1>
            </div>
          @include('partials.showError')
            <!--End Page Header -->
        </div>
        <div class="row" style="margin-bottom: 30px;">
            {!! Form::open(['method' => 'GET', 'url' => 'admin/category']) !!}
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
                {{--<a href="{{url('admin/category/create')}}" class="btn btn-default">Thêm mới</a>--}}
                <!--Simple table example -->
                    <div class="panel panel-primary">
                        <div class="panel-heading" style="line-height: 30px;">
                            <i class="fa fa-bar-chart-o fa-fw"></i>DANH SÁCH DANH MỤC
                            <div class="pull-right">
                                <div class="btn-group">
                                    <div class="btn-group">
                                        <a type="button" href="{{url('admin/category/create')}}" class="btn btn-default" style="background-color: #2ca02c; color: white; font-weight: bold;"><span class="glyphicon glyphicon-plus" style="color: white; font-weight: bold; font-size: 16px;"></span> Thêm mới</a>
                                    </div>
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
                                                    <th>Tên danh mục</th>
                                                    <th>Ngày tạo</th>
                                                    <th>hoạt động</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @if($list)
                                                    @foreach($list as $key => $item)
                                                        <tr>
                                                            <td>{{$key + $list->firstItem() }}</td>
                                                            <td>{{ $item->name }}</td>
                                                            <td> {{$item->created_at }}</td>
                                                            <td>
                                                                {{Form::open([
                                                                    'method'=>'DELETE',
                                                                    'url'=>['admin/category',$item->id]
                                                                    ])}}
                                                                <a href="{{url('admin/category/'.$item->id.'/edit')}}" class="btn btn-primary">Sửa</a>
                                                                <button type="submit" class="btn btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xóa không');">Xóa</button>
                                                                {{Form::close()}}
                                                            </td>

                                                        </tr>
                                                    @endforeach
                                                @endif
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

