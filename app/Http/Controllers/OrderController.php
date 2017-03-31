<?php

namespace App\Http\Controllers;

use App\Order;
use Carbon\Carbon;
use Illuminate\Contracts\Session\Session;
use Illuminate\Http\Request;
use App\Order_detail;
use App\User;
use App\Product;
use View;
use Cart;

class OrderController extends Controller
{
    CONST ROW_PER_PAGE = 9;
    public function __construct(Request $request)
    {
        $list = Order::all();
        View::share('list', [compact('list')]);
    }
    public function index(Request $request)
    {
        $data = $request->all();
        $KeyWord='';
        if($request->has('keyword')) {
            $KeyWord = $request->get('keyword');
            $list = Order::where('receiver', 'like', '%'.$KeyWord . '%')
                ->orWhere('orderdate', 'like', '%'.$KeyWord.'%')
                ->orWhere('requiredate', 'like', '%'.$KeyWord.'%')
                ->paginate(9)
            ;
        }else{
            $list = Order::paginate(self::ROW_PER_PAGE);
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
            $user->adderss = $request->address;
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
            $ord->status = 1;
            $ord->save();

            //sau khi save bang order thì có order_id va save tiep vao bang order_detail
            $amount = 0;
            foreach (Cart::content() as $sp) {
                $ordDetail = new Order_detail();
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
            Cart::destroy();
        }

        return redirect()->away("https://www.nganluong.vn/button_payment.php?receiver=nguyenthitien17061995@gmail.com&product_name=Test&price=".$amount."&return_url=http://kuteshop.dev:88&comments=Test");
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $ord = Order::findOrFail($id);
        $ord->status = 1;
        $ord->save();
        return view('admin.order.orderAdmins',compact('ord'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
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
}
