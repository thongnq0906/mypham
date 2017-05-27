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
                    <h1 class="page-header">Sửa nhà cung cấp ' {{$row->name}}'</h1>
                </div>
                <!--end page header -->
            </div>
            @include('partials.showError')
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default" style="margin-left: -280px;">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    {!! Form::model($row, ['method' => 'PATCH',
                                    'url' => ['admin/supplier',$row->id]
                                    ,'files'=>true, 'role' =>'form']) !!}
                                    <div class="form-group">
                                        <label for="txtname">Tên nhà cung cấp:</label>
                                        <input name="txtname" id="txtname" class="form-control" value="{{$row->name}}">
                                        <label for="txtEmail">Email:</label>
                                        <input name="txtEmail" id="txtEmail" class="form-control" value="{{$row->email}}">
                                    </div>
                                    <button type="submit" class="btn btn-primary">Sửa nhà cung cấp</button>

                                </div>
                                <div class="col-md-6">
                                    <label for="txtPhone">số điện thoại:</label>
                                    <input name="txtPhone" id="txtPhone" class="form-control" value="{{$row->phone}}">
                                    <label for="txtLogo">logo:</label>
                                    <input name="txtLogo" id="txtLogo" type="file">
                                    <div>
                                        <img src="{{url('/uploads/supplier/'.$row->logo)}}" width="100px" height="100px" >
                                    </div>
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
