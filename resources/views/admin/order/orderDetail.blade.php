
@extends('templates.dashboards')
@section('title')
 Chi Tiết Hóa Đơn
@endsection
@section('content')
    <div id="page-wrapper">

        <div class="row">
            <!-- Page Header -->
            <div class="col-lg-12">
                <h1 class="page-header">Chi Tiết Hóa Đơn</h1>
            </div>
            <!--End Page Header -->
        </div>
        
       
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <!--Area chart example -->
                <!--End area chart example -->
                <!--Simple table example -->

                <div class="panel panel-primary">
                    <div class="panel-heading" style="line-height: 30px;">
                        <i class="fa fa-bar-chart-o fa-fw"></i>Chi tiết hóa đơn ngày đặt  {{$order->created_at}} ||

                        Tên người đặt : 
                        @if(isset($order->user_id) )                       
                            {{ $order->user->name }}  
                        @else 
                            {{ $order->receiver }} 
                        @endif
                    </div>

                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped">
                                        <thead>
                                        <tr>
                                            <th> STT </th>
                                            <th> Tên sản phẩm </th>
                                            <th> Số lượng </th>
                                            <th>  Đơn giá </th>
                                            <th> Thành tiền </th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @foreach($list as $key=>$it)
                                            <tr>
                                                <td> {{ $key + $list->firstItem() }}</td>
                                                <td> {{$it->product->name}}  </td>
                                                <td> {{$it->quantity}}</td>
                                                <td> {{ number_format( $it->price ) }}</td>
                                                <td> {{ number_format( $it->amount ) }}</td>
                                            </tr> 
                                        @endforeach
                                        </tbody>
                                    </table>
                                    @if($list->links())
                                        {!! $list->links() !!}
                                    @endif
                                </div>
                                    <a href="{{url('admin/order')}}" class="btn btn-success" >Quay lại</a>
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
