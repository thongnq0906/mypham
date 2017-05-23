@extends('templates.dashboards')
@section('title')
 Edit New
@endsection
@section('content')
    <div id="page-wrapper">
        <div id="page-wrapper">
            <div class="row">
                <!-- page header -->
                <div class="col-lg-12" style="margin-left: -280px;">
                    <h1 class="page-header">Sửa tin thời trang ' {{$row->title}}'</h1>
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
                                    'url' => ['admin/new',$row->id]
                                    ,'files'=>true, 'role' =>'form']) !!}
                                    <div class="form-group">
                                        <label for="txtname">Title:</label>
                                        <input name="txtname" id="txtname" class="form-control" value="{{$row->title}}">
                                    </div>
                                    <button type="submit" class="btn btn-primary">Sửa tin thời trang</button>

                                </div>
                                <div class="col-md-6">
                                    <label for="txtimage">image:</label>
                                    <input name="txtimage" id="txtimage" type="file">
                                    <div>
                                        <img src="{{url('/uploads/new/'.$row->image)}}" width="100px" height="100px" >
                                    </div>
                                    <label for="txtMotan">Mô tả ngắn:</label>
                                    <textarea name="txtMotan" id="txtMotan" class="form-control ckeditor"
                                              style="height: 200px;"></textarea>
                                    <label for="txtMota">Mô tả:</label>
                                    <textarea name="txtMota" id="txtMota" class="form-control ckeditor"
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
