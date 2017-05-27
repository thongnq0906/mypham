@extends('templates.dashboards')
@section('title')
 Thêm mới người dùng
@endsection
@section('content')
    <div id="page-wrapper">

        <div class="row">
            <!-- Page Header -->
           <!--  <div class="col-lg-12">
                <h1 class="page-header">Thêm mới người dùng</h1>
            </div> -->
            <!--End Page Header -->
        </div>
        <div id="page-wrapper">
            <div class="row">
                <!-- page header -->
                <div class="col-lg-12" style="margin-left: -280px;">
                    <h1 class="page-header">Thêm người dùng </h1>
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
                                    'method' => 'POST',
                                    'url' => 'admin/user',
                                    'role' =>'form']) !!}
                                        <div class="form-group">
                                            <label for="name">Tên người dùng:</label>
                                            <input name="name" id="name" class="form-control">

                                            <label for="email">email:</label>
                                            <input name="email" id="email" class="form-control" >

                                            <label for="password">Mật khẩu:</label>
                                            <input id="password" type="password" class="form-control" name="password" required>

                                            <label for="password">Nhập lại mật khẩu:</label>
                                            <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>

                                            <label for="phone">Số điện thoại:</label>
                                            <input name="phone" id="phone" class="form-control">

                                            <label for="address">Địa chỉ:</label>
                                            <input name="address" id="adderss" class="form-control"
                                            >
                                            <br>
                                            <label for="group">Quyền cho người dùng: &nbsp;&nbsp;</label>
                                            {!! Form::select('group_id', $group) !!}
                                        </div>
                                        <button type="submit" class="btn btn-primary">Thêm người dùng</button>
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
