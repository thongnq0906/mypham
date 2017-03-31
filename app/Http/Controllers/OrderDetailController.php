<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Category;
use App\Supplier;
use View;
use Cart;
use Session;
use App\Order_detail;

class OrderDetailController extends Controller
{
    CONST ROW_PER_PAGE = 9; //so ban ghi hien thi tren mot trang
    private $footer = null;

    public function __construct()
    {
        $list = Category::all();
        $this->footer = Supplier::all();
        View::share('list', [compact('list')]);
    }

    public function index(Request $request){
        $data = $request->all();
        $keyword='';
        if($request->has('keyword')) {
            $keyword = $request->get('keyword');
            $list = Order_detail::where('name', 'like', '%'.$keyword . '%')
                ->get();
        }else{
            $list = Order_detail::paginate(self::ROW_PER_PAGE);
        }
        //Em lam tuong tu o trang nay nhu sau:
        $OrderDetail = Order_detail::all();
        return view('admin.order.orderDetail',
            ['list' => $list, 'keyword' => $keyword,'OrderDetail'=>$OrderDetail, 'list' => $list, 'footer' => $this->footer]
        );

    }
    public function store(Request $request)
    {
        // muốn upload ảnh thì đầu tiên form của em phải khia báo thêm thuộc tính
        // 'files' => true và dưới đây là code upload ảnh

        if($request->txtname){
            $row= new Product();
            if ($request->hasFile('txtAnhDd')) {
                $row->name=$request->txtname;
                $row->category_id=$request->slParen;
                $row->supplier_id=$request->slnn;
                $row->price=$request->txtGia;
                $row->productdate=$request->txtNgayNhap;
                $row->quantity=$request->txtSoluong;
                $row->discount=$request->txtGiamGia;
                if($request->cbStatus){
                    $row->available='1';
                }else{
                    $row->available='0';
                }
                $row->description=$request->txtMota;

                $fileName = $request->file('txtAnhDd')->getClientOriginalName(); // dong code nay se tra ve ten file anh duoc upload
                $row->thumbnail=$fileName;

                $filePath = public_path('/uploads/product/'); //anh se duoc upload vo trong folder uploads/product chung ta se lay ve duong dan nhu sau
                $request->file('txtAnhDd')->move($filePath, $fileName); // di chuyen anh den duong dan da thiet lap voi ten file da khai bao
                $row->save();
            }

        }
        Session::flash('success','Thêm mới thành công');
        return redirect('admin/product');
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
//        $product = Product::where('id', $id)->first();
//        $pro =Product::all();
//
//        return view('detail.detail', compact('product','pro'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $categories = Category::all();
        $row= Supplier::all();
        $product =Product::findOrFail($id);
        return view('admin.orderDetail.editorderDetail',compact('row','categories','product'));
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $product)
    {
        $data = $request->all();
        $product = Product::whereId($product)->firstOrFail();

        $product->update($data);
        if(isset($data['thumbnail'])){
            $fileName = $request->file('thumbnail')->getClientOriginalName(); // dong code nay se tra ve ten file anh duoc upload
            $filePath = public_path('/uploads/product/'); //anh se duoc upload vo trong folder uploads/product chung ta se lay ve duong dan nhu sau
            $request->file('thumbnail')->move($filePath, $fileName); // di chuyen anh den duong dan da thiet lap voi ten file da khai bao
            $product->thumbnail=$fileName;
            $product->save();
        }
        Session::flash('success','Sửa thành công!');
        return Redirect("admin/orderDetail");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $row =Order_detail::findOrFail($id);
        if ($row){
            $row->delete();
        }
        Session::flash('success','Xóa chi tiết hóa đơn-"'.$row->name.'" thành công!');
        return Redirect('admin/orderDetail');
    }

}
