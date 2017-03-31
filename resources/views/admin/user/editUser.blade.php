@extends('templates.dashboards')
@section('content')
    <div id="page-wrapper">

        <div class="row">
            <!-- Page Header -->
            <div class="col-lg-12">
                <h1 class="page-header">Người dùng</h1>
            </div>
            <!--End Page Header -->
        </div>
        <div id="page-wrapper">
            <div class="row">
                <!-- page header -->
                <div class="col-lg-12" style="margin-left: -280px;">
                    <h1 class="page-header">Sửa người dùng "{{$row->name}}"</h1>
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
                                    {!! Form::open([
                                    'method' => 'PATCH',
                                    'url' => 'admin/user/'.$row->id.'/edit',
                                    'role' =>'form']) !!}
                                            <div class="form-group">
                                                <label for="name">Tên người dùng:</label>
                                                <input name="name" id="name" class="form-control" value="{{$row->name}}">
                                                <label for="email">email:</label>
                                                <input name="email" id="email" class="form-control" value="{{$row->email}}">
                                                <label for="phone">phone:</label>
                                                <input name="phone" id="phone" class="form-control" value="{{$row->phone}}">
                                                <label for="adderss">email:</label>
                                                <input name="adderss" id="adderss" class="form-control" value="{{$row->adderss}}">
                                            </div>
                                            <button type="submit" class="btn btn-primary">Sửa người dùng</button>
                                    {!! Form::close() !!}
                                </div>

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