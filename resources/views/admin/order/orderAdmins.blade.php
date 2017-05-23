@extends('templates.dashboards')
@section('title')
 Order
@endsection
@section('content')
    <div id="page-wrapper">

        <div class="row">
            <!-- Page Header -->
            <div class="col-lg-12">
                <h1 class="page-header">Hóa đơn</h1>
            </div>

            <!--End Page Header -->
        </div>
        <div class="row" style="margin-bottom: 30px;">
            {!! Form::open(['method' => 'GET', 'url' => 'admin/order']) !!}
                <div class="col-md-6">
                    <div class="input-group custom-search-form">
                        <input type="text" class="form-control" placeholder="Tên kiếm ...." name="keyword"
                               value="{{ (Request::has('keyword')) ? Request::get('keyword') : '' }}">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="submit">
                                <i class="fa fa-search"></i>
                            </button>
                        </span>
                    </div>
                </div>
            {!! Form::close() !!}
        </div>
        @if(Session::has('success'))
            <div class="row">
                <!-- Welcome -->
                <div class="col-lg-12">
                    <div class="alert alert-info">
                        <i class="fa fa-folder-open"></i>
                        <b>{{Session::get('success')}}</b>
                    </div>
                </div>
                <!--end  Welcome -->
            </div>
        @endif
        <div class="row">
            <div class="col-lg-12 col-md-12">
            {{--<a href="{{url('admin/category/create')}}" class="btn btn-default">Thêm mới</a>--}}
            <!--Simple table example -->
                <div class="panel panel-primary">
                    <div class="panel-heading" style="line-height: 30px;">
                        <i class="fa fa-bar-chart-o fa-fw"></i>DANH SÁCH HÓA ĐƠN
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped">
                                        <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Tên khách hàng</th>
                                            <th>tên người hỗ trợ</th>
                                            <th>Ngày mua hàng</th>
                                            <th>Ngày nhận hàng</th>
                                            <th>Mô tả</th>
                                            <th>Tổng tiền</th>
                                            <th>Trạng thái</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @if($list)
                                            @foreach($list as $key => $item)
                                                <tr>
                                                    <td>{{$key +1}}</td>
                                                    <td><a href="{{url('admin/orderDetail')}}">{{ $item->receiver }}</a></td>
                                                    <td>{{ $item->support }}</td>
                                                    <td>{{ $item->orderdate }}</td>
                                                    <td>{{ $item->requiredate }}</td>
                                                    <td>{{ $item->description }}</td>
                                                    <td>{{ $item->amount }}</td>
                                                    <td>
                                                        <select onchange="change_status({{$item->id}})" id="select-status-{{$item->id}}">
                                                            @foreach($item->get_statuses() as $key=>$status)
                                                                @if($item->status == $key)
                                                                    <option value="{{$key}}" selected>
                                                                        {{$status}}
                                                                    </option>
                                                                @else
                                                                    <option value="{{$key}}">
                                                                        {{$status}}
                                                                    </option>
                                                                @endif
                                                            @endforeach
                                                        </select>
                                                    </td>

                                                </tr>
                                            @endforeach
                                        @endif
                                        </tbody>
                                    </table>
                                    @if($list->links())
                                        {!! $list->links() !!}
                                    @endif
                                </div>
                            </div>
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!--End simple table example -->

            </div>

        </div>


    </div>
    <!-- end page-wrapper -->
@stop
@section('adminScript')
    <script>
        function change_status(order_id){
            url = 'order/change_status';
            $.ajax({
                url      : url,
                type     : "POST",
                data     : {
                    'order_id':order_id,
                    'status': $('#select-status-'+order_id).val()
                },
                success  : function(data){
                    if(data.code == 200){
                        $('#select-status-'+order_id+' option').each(function() {
                            if($(this).attr('value') == data.data)
                                $(this).attr('selected','');
                        });
                    }
                    alert(data.message);
                },
                error:function(){
                    alert("Không thực hiện được hành động này!");
                }
            });
        }
    </script>
@stop
