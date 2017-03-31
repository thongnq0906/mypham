<?php

namespace App\Http\Controllers;

use App\Image;
use App\Product;
use App\Supplier;
use Illuminate\Http\Request;
use App\Category;
use View;
use Session;
class ImageController extends Controller
{    CONST ROW_PER_PAGE = 9;
    private $footer = null;

    public function __construct()
    {
        $list = Category::all();
        $this->footer = Supplier::all();

        View::share('list', [compact('list')]);
    }
    public function index()
    {
        $list =Image::create([
                'product_id'
            ]
        );
        return view('admin.image.imageadmin',['list'=>$list] );
    }

    public function create()
    {
        $products=Product::all();
        return view('admin.image.createimage',compact('products'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if($request->txtname){
            $row = new Image();
            $row->name=$request->txtname;
            $row->product_id=$request->txtproduct;
            $row->product_id=$request->txttsp;
            $fileName = $request->file('txtimage')->getClientOriginalName();
            $filePath = public_path('/uploads/image/');
            $request->file('txtimage')->move($filePath, $fileName);
            $row->url=$fileName;
            $row->size=$request->txtsize;
            $row->save();
            Session::flash('success','Thêm mới thành công');
        }

        return Redirect("admin/image");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $row =Image::findOrFail($id);
        return view('admin.image.editimage',compact('row'));
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
        if(isset($id)&& $request->txtname!=null){
            $row=Image::Where('id',$id)->first();
            $row->title=$request->txtname;
            $row->product_id=$request->txtproduct;
            $row->product_id=$request->txttsp;
            if($request->file('txtimage')!=null){
                $fileName = $request->file('txtimage')->getClientOriginalName();
                $filePath = public_path('/uploads/image/');
                $request->file('txtimage')->move($filePath, $fileName);
                $row->url=$fileName;
            }
            $row->size=$request->txtsize;
            $row->save();
            Session::flash('success','Sửa thành công!');
        }
        return Redirect("admin/image");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $img =Image::findOrFail($id);
        if ($img){
            $img->delete();
        }
        Session::flash('success','Xóa anh="'.$img->name.'" thành công!');
        return Redirect('admin/product/'.$img->id);
    }
}
