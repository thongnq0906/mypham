<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Cart;
use App\Product;
use App\Supplier;
use Session;

class MuahangController extends Controller
{
    private $footer = null;

    public function __construct()
    {
        $this->footer = Supplier::where('is_deleted', 0)->get();
    }

    public function muahang($id){
        $buy = Product::where('is_deleted', 0)->where('id', $id)->first();

        if ($buy->quantity > 0) { //ktra nếu số lượng lớn hơn 0 thì add vào giỏ hàng
            cart::add(array('id'=>$id , 'name' =>$buy->name,'qty'=> 1 ,'price' => $buy->price,
                'options'=>array('img'=>$buy->thumbnail, 'discount'=>$buy->discount )));
        } else {
            //neu số lượng nhỏ hon hoặc bàng 0 thì không cho add và báo ra message
            Session::flash('out_of_stock', 'Sản phẩm "'.$buy->name.'" đã hết hàng xin chọn sản phẩm khác !');
        }

        return redirect('/');
    }

    public function hienthi(){
        
        return view('home.order',[ 'footer' => $this->footer]);
    }

    public function deleteorder($id)
    {
        $content = Cart::content();
        foreach ($content as $item) {
            if ($id == $item->id) {
                $rowId = $item->rowId;
                Cart::remove($rowId);
                break;
            }
        }
        
        return redirect('order');
    }

    
    public function update(Request $request, $id)
    {
        //lấy về số lượng còn lại trong kho của sản phẩm này
        $prd = Product::findOrFail($id);

        if ($prd->quantity > 0 && $prd->quantity >= $request->qty) {
            $content = Cart::content();
            foreach ($content as $item) {
                if ($id == $item->id) {
                    $rowId = $item->rowId;
                    Cart::update($rowId, ['qty' => $request->qty]);
                    break;
                }
            }
        } else {
            Session::flash('out_of_stock', 'Sản phẩm "'.$prd->name.'" trong kho còn số lượng là: '.$prd->quantity.' sản phẩm!');
        }

        return redirect('order');
    }

   
}
