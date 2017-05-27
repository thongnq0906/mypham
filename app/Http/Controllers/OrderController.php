<?php

namespace App\Http\Controllers;

use App\Order;
use Carbon\Carbon;
use Session;
use Illuminate\Http\Request;
use App\OrderDetail;
use App\User;
use App\Product;
use View;
use Cart;

class OrderController extends Controller
{
    CONST ROW_PER_PAGE = 20;
    public function __construct(Request $request)
    {
        $list = Order::orderBy('created_at' , 'DESC')->get();
        View::share('list', [compact('list')]);
    }
    public function index(Request $request)
    {
        $data = $request->all();
        $KeyWord='';
        if($request->has('keyword')) {
            $KeyWord = $request->get('keyword');
            $list = Order::where('receiver', 'like', '%'.$KeyWord . '%')
                ->orWhere('created_at', 'like', '%'.$KeyWord.'%')
                ->orWhere('amount', 'like', '%'.$KeyWord.'%')
                ->paginate(20)
            ;
        }else{
            $list = Order::orderBy('created_at' , 'DESC')->paginate(self::ROW_PER_PAGE);
        }

        return view('admin.order.orderAdmins',compact('list','KeyWord'));
    }

    public function checkout(Request $request)
    {


        if (count(Cart::content()) > 0) { //kiem tra neu trong gio hang co san pham thi moi cho phep dat hang
            //luu thong tin vao bang user
            $user = new User();
            $user->name = $request->name;
            $user->email = $request->email;
            $user->phone = $request->phone;
            $user->address = $request->address;
            $user->group_id = 2;
            $user->password = bcrypt(rand(111111, 999999));
            $user->save();

            //sau khi co user_id thi save vao bang order
            $ord = new Order();
            $ord->user_id = $user->id;
            $ord->orderdate = date('Y-m-d');
            $ord->requiredate = date('Y-m-d');
            $ord->receiver = $request->name;
            $ord->description = $request->order_comments;
            $ord->amount = 0;
            $ord->type = $request->payment;
            $ord->status = 1;
            $ord->save();

            //sau khi save bang order thì có order_id va save tiep vao bang order_detail
            $amount = 0;
            foreach (Cart::content() as $sp) {
                $ordDetail = new OrderDetail();
                $ordDetail->order_id = $ord->id;
                $ordDetail->product_id = $sp->id;
                $ordDetail->price = $sp->price;
                $ordDetail->quantity = $sp->qty;
                $ordDetail->amount = $sp->price * $sp->qty;
                $ordDetail->save();
                $amount += ($sp->price * $sp->qty);

                //cap nhat so luong san pham trong db
                $prd =  Product::findOrFail($sp->id);;
                $prd->quantity = $prd->quantity - $sp->qty;
                $prd->save();
            }

            $ord->amount = $amount;
            $ord->save();

            //Xoa het san pham trong gio hang khi da mua hang xong
            
        }
            
        if($request->payment  == 0 ){
              Cart::destroy();
              Session::flash('success', 'Cảm ơn bạn đã đặt hàng, chúng tôi sẽ sớm giao hàng!');

              return redirect('/checkout');
        } else {
            Cart::destroy();
            Session::flash('success', 'Cảm ơn bạn đã đặt hàng, chúng tôi sẽ sớm giao hàng!');

            return redirect()->away("https://www.nganluong.vn/button_payment.php?receiver=nguyenthitien17061995@gmail.com&product_name=Test&price=".$amount."&return_url=http://kuteshop.dev:88&comments=Test");
        }      
    }
    
    public function show($id)
    {
        $ord = Order::findOrFail($id);
        $ord->status = 1;
        $ord->save();

        return view('admin.order.orderAdmins',compact('ord'));
    }


    public function change_status(Request $request){
        $data = $request->all();

        if(!isset($data['order_id']) || !isset($data['status']))
            return response()->json([
                'code'=>'32',
                'message'=>'Hãy nhập đủ thông tin',
                'params'=>$data
            ]);
        $order = Order::whereId($data['order_id'])->first();

        if(is_null($order))
            return response()->json([
                'code'=> 404,
                'message'=>'Không tìm thấy hóa đơn',
                'params'=>$data
            ]);
        $order->status = $data['status'];
        $order->save();

        return response()->json([
            'code'=> '200',
            'message'=>'Đổi trạng thái thành công',
            'data'=> $order->status
        ]);

    }

    public function orderDetail($id){

        $order = Order::where('id', $id)->first();
        
        $list = OrderDetail::where('order_id', $id)->paginate(10) ;

        return view('admin.order.orderDetail', [ 'list'=>$list, 'order'=>$order ]);
    }
}
