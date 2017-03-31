@extends('templates.dashboards')
@section('content')
    <div id="page-wrapper">

        <div class="row">
            <!-- Page Header -->
            <div class="col-lg-12">
                <h1 class="page-header">Danh mục</h1>
            </div>
            <!--End Page Header -->
        </div>
        <div id="page-wrapper">
            <div class="row">
                <!-- page header -->
                <div class="col-lg-12" style="margin-left: -280px;">
                    <h1 class="page-header">Sửa danh mục "{{$row->name}}"</h1>
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
                                    'url' => ['admin/category',$row->id],
                                    'role' =>'form']) !!}
                                            <div class="form-group">
                                                <label for="txtname">Tên danh mục:</label>
                                                <input name="name" id="txtname" class="form-control" value="{{$row->name}}">
                                                <label for="txtname">Danh mục Cha</label><br/>
                                                <select class="form-control" name="parent_id">
                                                    <option value="0" >No Parent</option>
                                                        @foreach($categories as $category)
                                                            <option value="{{ $category->id }}" @if($row->parent_id == $category->id) selected @endif>
                                                                {{ $category->name }}
                                                            </option>
                                                        @endforeach
                                                </select>
                                            </div>
                                            <button type="submit" class="btn btn-primary">Sửa danh mục</button>
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