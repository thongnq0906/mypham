@extends('templates.dashboards')
@section('title')
 Update Contact
@endsection
@section('content')
    <div id="page-wrapper">
        <div id="page-wrapper">
            <div class="row">
                <!-- page header -->
                <div class="col-lg-12" style="margin-left: -280px;">
                    <h1 class="page-header">Sửa Liên hệ ' {{$row->name}}'</h1>
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
                                    {!! Form::open(['method' => 'PATCH',
                                    'url' => ['admin/contact',$row->id]
                                    ,'files'=>true, 'role' =>'form']) !!}
                                    <div class="form-group">
                                        <label for="txtname">Tên người liên hệ:</label>
                                        <input name="txtname" id="txtname" class="form-control" value="{{$row->name}}">
                                        <label for="txtEmail">Email:</label>
                                        <input name="txtEmail" id="txtEmail" class="form-control" value="{{$row->email}}">
                                    </div>
                                    <button type="submit" class="btn btn-primary">Sửa </button>

                                </div>
                                <div class="col-md-6">
                                    <label for="txtPhone">số điện thoại:</label>
                                    <input name="txtPhone" id="txtPhone" class="form-control" value="{{$row->phone}}">
                                    <label for="txtmessage">message:</label>
                                    <input name="txtmessage" id="txtmessage" type="file" value="{{$row->message}}">
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
