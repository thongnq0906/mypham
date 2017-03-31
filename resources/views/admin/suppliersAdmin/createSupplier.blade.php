@extends('templates.dashboards')
@section('content')
    <div id="page-wrapper">
        <div id="page-wrapper">
            <div class="row">
                <!-- page header -->
                <div class="col-lg-12" style="margin-left: -280px;">
                    <h1 class="page-header">Thêm nhà cung cấp</h1>
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
                                    {!! Form::open(['method' => 'POST','url' => 'admin/supplier','files'=>true, 'role' =>'form']) !!}
                                    <div class="form-group">
                                        <label for="txtname">Tên nhà cung cấp:</label>
                                        <input name="txtname" id="txtname" class="form-control">
                                        <label for="txtEmail">Email:</label>
                                        <input name="txtEmail" id="txtEmail" class="form-control">
                                    </div>
                                    <button type="submit" class="btn btn-primary">Thêm nhà cung cấp</button>

                                </div>
                                <div class="col-md-6">
                                    <label for="txtPhone">số điện thoại:</label>
                                    <input name="txtPhone" id="txtPhone" class="form-control">
                                    <label for="txtLogo">logo:</label>
                                    <input name="txtLogo" id="txtLogo" type="file">
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