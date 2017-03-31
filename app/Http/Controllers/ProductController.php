<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Image;
use App\Category;
use App\Supplier;
use View;
use Cart;
use Session;


class ProductController extends Controller
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
            $list = Product::where('name', 'like', '%'.$keyword . '%')
                ->paginate(5);
        }else{
            $list = Product::paginate(5);
        }
        //Em lam tuong tu o trang nay nhu sau:

        return view('admin.productAdmin.productAdmin',
            ['list' => $list, 'keyword' => $keyword,]
        );

    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function product(Request $request)
    {
        $cate = null;
        if ($request->has('category') && $request->has('keyword')) {
            $category_id = $request->get('category');
            $keyword = $request->get('keyword');
            $cate = Category::findOrFail($category_id);
            $products = Product::where('category_id', $category_id)
                                ->where('name', 'like', "%$keyword%")
                                ->paginate(self::ROW_PER_PAGE);
            $products->withPath('product?category='.$request->get('category').'&keyword='.$request->get('keyword'));
        } elseif ($request->has('keyword')) {
            $keyword = $request->get('keyword');
            $products = Product::where('name', 'like', "%$keyword%")->paginate(self::ROW_PER_PAGE);
            $products->withPath('product?keyword='.$request->get('keyword'));
        } elseif ($request->has('category')) {
            $category_id = $request->get('category');
            $cate = Category::findOrFail($category_id);
            $products = Product::where('category_id', $category_id)->paginate(self::ROW_PER_PAGE);
            $products->withPath('product?category='.$request->get('category'));
        } else {
            $products = Product::paginate(self::ROW_PER_PAGE);
        }

        return view('home.product', [
            'products' => $products, // dong nay tuong duong voi dong cuoi cung roi nhe
            'cate' => $cate,
            'footer' => $this->footer
        ]);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();
        $suppliers = Supplier::all();
        $images = Image::all();
        return view('admin.productAdmin.createProduct',['categories'=>$categories,'suppliers'=>$suppliers,  'images'=>$images]);

        return view('admin.productAdmin.createProduct',['categories'=>$categories,'suppliers'=>$suppliers]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
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
                $row->short_description= htmlentities($request->txtMotangan);
                $row->description= htmlentities($request->txtMota);
                $fileName = $request->file('txtAnhDd')->getClientOriginalName(); // dong code nay se tra ve ten file anh duoc upload
                $row->thumbnail=$fileName;

                $filePath = public_path('/uploads/product/'); //anh se duoc upload vo trong folder uploads/product chung ta se lay ve duong dan nhu sau
                $request->file('txtAnhDd')->move($filePath, $fileName); // di chuyen anh den duong dan da thiet lap voi ten file da khai bao
                $row->save();
                if ($request->hasFile('txtAnhCT')) {
                    $files = $request->file('txtAnhCT');
                    foreach ($files as $file) {
                        $originalName = $file->getClientOriginalName();
                        $url = md5(rand(111111, 9999999) . date('YmdHis')) . '.' . $file->getClientOriginalExtension();
                        $type = $file->getMimeType();
                        $size = $file->getSize();
                        $img = new Image();
                        $img->name = $originalName;
                        $img->product_id = $row->id;
                        $img->url = $url;
                        $img->size = $size;
                        $img->type = $type;
                        $img->save();
                        $file->move($filePath, $url);
                    }
                }
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
        $product = Product::where('id', $id)->first();
        $product->view = $product->view + 1;
        $product->save();
        $pro = Product::where('category_id', $product->category_id)->where('id', '!=', $id)->paginate(15);

        return view('home.detail', ['product' => $product,'pro' => $pro]);
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
        $suppliers = Supplier::all();
        $row =Product::findOrFail($id);
        return view('admin.productAdmin.editProduct',compact('row','categories','suppliers'));
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

        $filePath = public_path('/uploads/product/');

        if (isset($data['thumbnail'])) {
            $fileName = $request->file('thumbnail')->getClientOriginalName();
            $request->file('thumbnail')->move($filePath, $fileName);
            $product->thumbnail = $fileName;
            $product->save();
        }

        if ($request->hasFile('txtAnhCT')) {
            $files = $request->file('txtAnhCT');
            foreach ($files as $file) {
                $originalName = $file->getClientOriginalName();
                $url = md5(rand(111111, 9999999) . date('YmdHis')) . '.' . $file->getClientOriginalExtension();
                $type = $file->getMimeType();
                $size = $file->getSize();
                $img = new Image();
                $img->name = $originalName;
                $img->product_id = $product->id;
                $img->url = $url;
                $img->size = $size;
                $img->type = $type;
                $img->save();
                $file->move($filePath, $url);
            }
        }

        Session::flash('success', 'Sửa thành công!');
        return Redirect("admin/product");
    }

    public function destroy($id)
    {
        $row =Product::findOrFail($id);
        if ($row){
            $row->delete();
        }
        Session::flash('success','Xóa Sản phẩm -"'.$row->name.'" thành công!');
        return Redirect('admin/product');
    }
}
