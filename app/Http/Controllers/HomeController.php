<?php

namespace App\Http\Controllers;

use App\Comtact;
use App\News;
use App\OrderDetail;
use Illuminate\Http\Request;
use App\Product;
use App\Supplier;
use App\Category;
use App\Order;
use App\User;
use App\Image;
use View;
use Cart;
use Session;
use DB;
use Auth;
use Response;

class HomeController extends Controller
{
    private $footer = null;
    CONST ROW_PER_PAGE = 10; //so ban ghi hien thi tren mot trang
    public function __construct()
    {
        $this->footer = Supplier::where('is_deleted', 0)->get();
        $list = Category::where('is_deleted', 0)->get();

        View::share('list', [compact('list')]);
    }

    public function index()
    {
        $supplier = Supplier::where('is_deleted', 0)->get();
        $productOther=Product::where('is_deleted', 0)->orderBy('created_at', 'asc')->take(8)->get();
        // $best = OrderDetail::getBestSell();
        $best = Product::where('is_deleted', 0)->where('discount', '>=', 15)->take(8)->get();
        $wishlist_sp = Product::where('status', 1)->get();
        $catediscount = Product::where('is_deleted', 0)->where('discount', '>=', 1)->orderBy('discount', 'desc')->take(8)->get();
        $cate = Product::where('is_deleted', 0)->orderBy('created_at', 'desc')->take(8)->get();
        return view('home.home', [
                                'footer'          => $this->footer,
                                'best'            => $best,
                                'supplier'        => $supplier,
                                'catediscount'    => $catediscount,
                                'cate'            => $cate,
                                'productOther'         =>$productOther,
                                'wishlist_sp'     =>$wishlist_sp
                            ]);
    }
   
     
    public function show($id)
    {
        $cate = Category::findOrFail($id);
        $products = Product::where('is_deleted', 0)->where('category_id', $id)->paginate(10);

        return view('home.product', compact('products', 'cate'));
    }

   
    public function blog()
    {      
        $cateblog = News::where('is_deleted', 0)->orderBy('created_at', 'desc')->limit(3)->get();
        $blog = News::where('is_deleted', 0)->paginate(5);

        return view('home.blog', ['cateblog' => $cateblog,'blog' => $blog, 
                                  'footer' => $this->footer, ] );
    }

 
    public function categories()
    {
        return view('categories.categories', ['footer' => $this->footer]);
    }

    public function blog_detail($id)
    {
        $datail_ds=News::where('is_deleted', 0)->get();
        $detail = News::where('is_deleted', 0)->where('id', $id)->first();

        return view('home.blog_detail',['detail'=> $detail ,'datail_ds'=> $datail_ds ,'footer' => $this->footer]);
    }

    public function about()
    {

        return view('home.about', ['footer' => $this->footer]);
    }

    public function wishlist()
    {
        // $wishlist = Product::where('is_deleted', 0 )->get();
        $wishlist_sp = Product::where('is_deleted', 0)->where('discount', '>', 1)->paginate(8);

        return view('home.wishlist', [ 'wishlist_sp' => $wishlist_sp, 'footer' => $this->footer]);
    }

    public function support()
    {

        return view('home.support', ['footer' => $this->footer]);
    }

    public function updatecontact(Request $request)
    {
        $contact = new Comtact();
        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->phone = $request->phone;
        $contact->message = $request->message;
        $contact->status = 0;
        $contact->save();

        Session::flash('contact', 'Cảm ơn bạn đã liên lạc, chúng tôi sẽ sớm trả lời bạn!');

        return redirect('contact');
    }

    public function contact()
    {

        return view('home.contact', ['footer' => $this->footer]);
    }

    public function footer()
    {

        return view('partials.footer', ['footer' => $this->footer]);
    }

    public function change_password()
    {
        return view('auth.passwords.change_password');
    }

    public function update_password(Request $request)
    {
        $this->validate($request, [
            'password' => 'required|same:update_password'
        ]);

        $userId = Auth::user()->id;
        $user = User::findOrFail($userId);
        $user->password = bcrypt($request->password);
        $user->save();

        return redirect('/');
    }

    public function homeAdmin()
    {
        $productTotal = Product::where('is_deleted', 0)->select(DB::raw('sum(quantity) as total'))->first(); //lay ve tong so san pham con trong kho
        $orderTotal = Order::count();
        $orderWaitingTotal = Order::where('status', 1)->count();
        $orderProcessingTotal = Order::where('status', 2)->count();
        $orderDoneTotal = Order::where('status', 3)->count();
        $orderCancelTotal = Order::where('status', 4)->count();
        $orderUser = User::where('is_deleted', 0)->count();
        $orderCategory = Category::where('is_deleted', 0)->count();
        $orderSupplier = Supplier::where('is_deleted', 0)->count();
        $orders = Order::where('status', '1')->orderBy('orderdate', 'DESC')->paginate(10);

        return view('admin.homAdmin.homAdmin', [
            'productTotal' => $productTotal->total,
            'orderTotal' => $orderTotal,
            'orderWaitingTotal' => $orderWaitingTotal,
            'orderProcessingTotal' => $orderProcessingTotal,
            'orderDoneTotal' => $orderDoneTotal,
            'orderCancelTotal' => $orderCancelTotal,
            'orderUser' => $orderUser,
            'orderCategory' => $orderCategory,
            'orderSupplier' => $orderSupplier,
            'orders' => $orders,


        ]);
    }

    public function checkout()
        {
            $total = 0;
            $content = Cart::content();
            foreach ($content as $item) {
                $total = $item->qty * $item->price;
            }
            Session::flash('contact', 'Cảm ơn bạn đã đặt hàng, chúng tôi sẽ sớm giao hàng!');

            return view('home.checkout', ['footer' => $this->footer, 'total' => $total]);
        }

    public function supplier($id){

        $namesup = Supplier::where('is_deleted', 0)->where('id', $id)->first();
        $suppliers=Product::where('is_deleted', 0)->where('supplier_id', $id)->paginate(9);
      
        return view('home.supplier', [ 'footer' => $this->footer, 'suppliers'=>$suppliers, 
             'namesup'=>$namesup ]);
    }    

    public function statistic()
    {
        $result = [];
        for ($y = 2015; $y <= 2017; $y++) {
            for ($i = 1; $i <= 4; $i++) {
                if ($y == 2017 && $i > 1) break;
                $period = $y . ' Q' . $i;
                $startMonth = $y . '-01';
                $endMonth = $y . '-03';
                if ($i == 2) {
                    $startMonth = $y . '-04';
                    $endMonth = $y . '-06';
                } elseif ($i == 3) {
                    $startMonth = $y . '-07';
                    $endMonth = $y . '-09';
                } elseif ($i == 4) {
                    $startMonth = $y . '-10';
                    $endMonth = $y . '-12';
                }

                $daxuly = Order::where('orderdate', '>=', $startMonth . '-01')->where('orderdate', '<=', $endMonth . '-31')->where('status', 3)->count();
                $dabihuy = Order::where('orderdate', '>=', $startMonth . '-01')->where('orderdate', '<=', $endMonth . '-31')->where('status', 4)->count();
                $tongso = Order::where('orderdate', '>=', $startMonth . '-01')->where('orderdate', '<=', $endMonth . '-31')->count();
                $result[] = array(
                    'period' => $period,
                    'daxuly' => $daxuly,
                    'dabihuy' => $dabihuy,
                    'tongso' => $tongso
                );
            }
        }

        return Response::json($result);

        //Code gen hoa don tu dong
        /*$orderId = 7;
        for ($y = 2015; $y <= 2017; $y++) {
            for ($m = 1; $m <= 12; $m++) {
                if ($y == 2017 && $m > 3) { break; }
                $total = rand(10,  40);
                for($or = 1; $or <= $total; $or++) {
                    $status = rand(3, 4);
                    echo "INSERT INTO `orders` VALUES ('".$orderId."', '7', null, '".$y."-".$m."-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '".$status."', '".$y."-".$m."-03 04:14:15', '".$y."-".$m."-03 04:14:16');<br/>";
                    $orderId++;
                }
            }
        }
        die();*/
    }

    public function total(){
        return view('partials.cart');
    }
}
