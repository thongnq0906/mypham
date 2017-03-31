
@extends('templates.dashboards')
@section('content')
    <div id="page-wrapper">

        <div class="row">
            <!-- Page Header -->
            <div class="col-lg-12">
                <h1 class="page-header">Liên hệ</h1>
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
                        <i class="fa fa-bar-chart-o fa-fw"></i>Danh sách liên hệ
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped">
                                        <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Tên người liên hệ</th>
                                            <th>Email</th>
                                            <th>Số điện thoại</th>
                                            <th>message</th>
                                            <th>Hoạt động</th>
                                        </tr>
                                        </thead>
                                        <tbody>@foreach($contact as $key=>$it)
                                            <tr>
                                                <td>{{$key+1}}</td>
                                                <td>{{$it->name}}</td>
                                                <td>{{$it->email}}</td>
                                                <td>{{$it->phone}}</td>
                                                <td>{{$it->message}}</td>
                                                <td>
                                                    {{Form::open([
                                                                    'method'=>'DELETE',
                                                                    'url'=>['admin/contact',$it->id]
                                                                    ])}}
                                                    <a href="{{url('admin/contact/'.$it->id.'/edit')}}" class="btn btn-primary">Sửa</a>
                                                    <button type="submit" class="btn btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xóa không');">Xóa</button>
                                                    {{Form::close()}}
                                                </td>
                                            </tr>
                                        @endforeach
                                        </tbody>
                                    </table>
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