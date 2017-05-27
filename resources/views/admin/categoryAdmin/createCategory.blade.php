@extends('templates.dashboards')
@section('title')
 Thêm mới danh mục
@endsection
@section('content')
    <div id="page-wrapper">

        <div class="row">
            <!-- Page Header -->
            <!--End Page Header -->
        </div>
        <div id="page-wrapper">
            <div class="row">
                <!-- page header -->
                <div class="col-lg-12" style="margin-left: -280px;">
                    <h1 class="page-header">Thêm danh mục</h1>
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
                                    {!! Form::open(['method' => 'POST','url' => 'admin/category', 'role' =>'form']) !!}
                                        <div class="form-group">
                                            <label for="name">Tên danh mục:</label>
                                            <input name="name" id="txtname" class="form-control">
                                            <label for="txtname">Danh mục Cha</label><br/>
                                            <select class="form-control" name="parent_id">
                                                <option value="0" selected="selected">No Parent</option>
                                                    @foreach($categories as $category)
                                                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                                                    @endforeach
                                            </select>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Thêm danh mục</button>
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
