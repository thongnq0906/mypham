@extends('templates.dashboards')
@section('content')
    <div id="page-wrapper">

        <div class="row">
            <!-- Page Header -->
            <div class="col-lg-12">
                <h1 class="page-header">Tin Thời trang</h1>
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
                        <i class="fa fa-bar-chart-o fa-fw"></i>Danh sách tin thời trang
                        <div class="pull-right">
                            <div class="btn-group">
                                <a type="button" class="btn btn-default" href="{{url('admin/new/create')}}" style="background-color: #2ca02c;"><span class="glyphicon glyphicon-plus" style="color: white; font-weight: bold; font-size: 16px;"></span> Thêm mới</a>
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
                                            <th>Tiêu đề</th>
                                            <th>Hình ảnh</th>
                                            <th>Nội dung</th>
                                        </tr>
                                        </thead>
                                        <tbody>@foreach($list as $key=>$it)
                                            <tr>
                                                <td>{{$key+1}}</td>
                                                <td>{{$it->title}}</td>
                                                <td>
                                                    <div>
                                                        <img src="{{url('/uploads/new/'.$it->image)}}" width="80px"
                                                             height="80px">
                                                    </div>

                                                </td>
                                                <td>{!! $it->short_description !!}</td>
                                                <td>
                                                    {{Form::open([
                                                                    'method'=>'DELETE',
                                                                    'url'=>['admin/new',$it->id]
                                                                    ])}}
                                                    <a href="{{url('admin/new/'.$it->id.'/edit')}}" class="btn btn-primary">Sửa</a>
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