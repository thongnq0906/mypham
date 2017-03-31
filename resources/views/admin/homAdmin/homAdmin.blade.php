@extends('templates.dashboards')
@section('content')
    <div id="page-wrapper">

        <div class="row">
            <!-- Page Header -->
            <div class="col-lg-12">
                <h1 class="page-header">QUẢN TRỊ</h1>
            </div>
            <!--End Page Header -->
        </div>

        <div class="row">
            <!--quick info section -->
            <div class="col-lg-3">
                <div class="alert alert-success text-center">
                    <i class="fa  fa-beer fa-3x"></i>&nbsp;Có <b>{{ $orderWaitingTotal }}</b> đơn đặt hàng mới đang chờ xử lý
                </div>
            </div>
            <div class="col-lg-3">
                <div class="alert alert-warning text-center">
                    <i class="fa  fa-pencil fa-3x"></i>&nbsp;Có <b>{{ $orderProcessingTotal }}</b>/{{ $orderTotal }}
                    đơn đặt hàng đang được xử lý ({{number_format(($orderProcessingTotal/$orderTotal)*100)  }}%)
                </div>
            </div>
            <div class="col-lg-3">
                <div class="alert alert-info text-center">
                    <i class="fa fa-rss fa-3x"></i>&nbsp;Có <b>{{ $orderDoneTotal }}</b>/{{ $orderTotal }}
                    đơn đặt hàng đã giao hàng ({{number_format(($orderDoneTotal/$orderTotal)*100 )}}%)
                </div>
            </div>
            <div class="col-lg-3">
                <div class="alert alert-danger text-center">
                    <i class="fa fa-calendar fa-3x"></i>&nbsp;Có <b>{{ $orderCancelTotal }}</b>
                    đơn đặt hàng đã bị hủy ({{number_format(($orderCancelTotal/$orderTotal)*100 ) }}%)
                </div>
            </div>
            <!--end quick info section -->
        </div>

        <div class="row">
            <div class="col-lg-8">


                <!--Area chart example -->
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <i class="fa fa-bar-chart-o fa-fw"></i>Thống kê doanh số bán hàng
                    </div>

                    <div class="panel-body">
                        <div id="morris-area-chart"></div>
                    </div>

                </div>
                <!--End area chart example -->
                <!--Simple table example -->
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <i class="fa fa-bar-chart-o fa-fw"></i>Hóa đơn đặt hàng mới nhất
                    </div>

                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped">
                                        <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Người mua</th>
                                            <th>Ngày mua</th>
                                            <th>Ngày nhận hàng</th>
                                            <th>Tổng tiền</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($orders as $key => $item)
                                                <tr>
                                                    <td>{{$key+1}}</td>
                                                    <td>{{$item->receiver}}</td>
                                                    <td>{{$item->orderdate}}</td>
                                                    <td>{{$item->requiredate}}</td>
                                                    <td>{{ number_format($item->amount) }}đ</td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>

                            </div>

                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!--End simple table example -->

            </div>

            <div class="col-lg-4">
                <div class="panel panel-primary text-center no-boder">
                    <div class="panel-body yellow">
                        <i class="fa fa-bar-chart-o fa-3x"></i>
                        <h3>{{ $productTotal }} </h3>
                    </div>
                    <div class="panel-footer">
                        <span class="panel-eyecandy-title">
                            Số lượng sản phẩm còn lại
                        </span>
                    </div>
                </div>
                <div class="panel panel-primary text-center no-boder">
                    <div class="panel-body blue">
                        <i class="fa fa-pencil-square-o fa-3x"></i>
                        <h3>{{$orderUser}}</h3>
                    </div>
                    <div class="panel-footer">
                        <span class="panel-eyecandy-title">Số user trong hệ thống
                        </span>
                    </div>
                </div>
                <div class="panel panel-primary text-center no-boder">
                    <div class="panel-body green">
                        <i class="fa fa fa-floppy-o fa-3x"></i>
                        <h3>{{$orderCategory}}</h3>
                    </div>
                    <div class="panel-footer">
                        <span class="panel-eyecandy-title">Số danh muc
                        </span>
                    </div>
                </div>
                <div class="panel panel-primary text-center no-boder">
                    <div class="panel-body red">
                        <i class="fa fa-thumbs-up fa-3x"></i>
                        <h3>{{$orderSupplier}} </h3>
                    </div>
                    <div class="panel-footer">
                        <span class="panel-eyecandy-title">Số nhà phân phối
                        </span>
                    </div>
                </div>


            </div>

        </div>


    </div>
    <!-- end page-wrapper -->
@stop