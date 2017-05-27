@extends('templates.dashboards')
@section('title')
 Cập nhật liên hệ
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
                                    {!! Form::model ($row, ['method' => 'PATCH',
                                    'url' => ['admin/contact',$row->id]
                                    ,'files'=>true, 'role' =>'form']) !!}
                                     
                                     {!!
                                      Form::select('status',
                                       [
                                         '0' => ' Chưa liên hệ ',
                                         '1' => ' Đã liên hệ'
                                       ])
                                     !!}
                                     {!! Form::submit('Save', ['class' => 'btn green']) !!}
                                    <a href="{{ url('admin/contact') }}" class="btn default">Cancel</a>

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
