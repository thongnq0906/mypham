@extends('templates.dashboards')
@section('title')
 Create New
@endsection
@section('content')
    <div id="page-wrapper">
        <div id="page-wrapper">
            <div class="row">
                <!-- page header -->
                <div class="col-lg-12" style="margin-left: -280px;">
                    <h1 class="page-header">Thêm tin mới</h1>
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
                                    {!! Form::open(['method' => 'POST','url' => 'admin/new','files'=>true, 'role' =>'form']) !!}
                                    <div class="form-group">
                                        <label for="txtname">Title:</label>
                                        <input name="txtname" id="txtname" class="form-control">
                                    </div>
                                    <button type="submit" class="btn btn-primary">Thêm tin mới</button>

                                </div>
                                <div class="col-md-6">
                                    <label for="txtimage">image:</label>
                                    <input name="txtimage" id="txtimage" type="file">
                                    <label for="txtMotan">Mô tả ngắn:</label>
                                    <textarea name="txtMotan" id="txtMotan"  class="form-control ckeditor"
                                              style="height: 200px;"></textarea>
                                    <label for="txtMota">Mô tả:</label>
                                    <textarea name="txtMota" id="txtMota"  class="form-control ckeditor"
                                              style="height: 200px;"></textarea>

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
