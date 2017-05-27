<?php

namespace App\Http\Controllers;

use App\Supplier;
use Illuminate\Http\Request;
use Session;

class SupplierController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $list=Supplier::where('is_deleted', 0)->paginate(10);

        return view('admin.suppliersAdmin.suppliersAdmin', ['list'=>$list] );
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.suppliersAdmin.createSupplier');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'txtname'     => 'required|unique:suppliers,name', 
            'txtEmail'     => 'required|email|unique:suppliers,email',
            'txtPhone'     => 'required'

        ]);

        $row = new Supplier();
        $row->name=$request->txtname;
        $row->email=$request->txtEmail;
        $row->phone=$request->txtPhone;
        $fileName = $request->file('txtLogo')->getClientOriginalName();
        $filePath = public_path('/uploads/supplier/');
        $request->file('txtLogo')->move($filePath, $fileName);
        $row->logo=$fileName;
        $row->save();

        Session::flash('success','Thêm mới thành công');
        
        return Redirect("admin/supplier");
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
        $row =Supplier::findOrFail($id);

        return view('admin.suppliersAdmin.editSupplier',compact('row'));
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
         $this->validate($request, [
            'txtname'     => 'required', 
            'txtEmail'     => 'required',
            'txtPhone'     => 'required'

        ]);
       
        $row=Supplier::findOrFail($id);
        $row->name=$request->txtname;
        $row->email=$request->txtEmail;
        $row->phone=$request->txtPhone;
        if($request->file('txtLogo')!=null){
            $fileName = $request->file('txtLogo')->getClientOriginalName();
            $filePath = public_path('/uploads/supplier/');
            $request->file('txtLogo')->move($filePath, $fileName);
            $row->logo=$fileName;
        }
        $row->save();
        Session::flash('success','Sửa thành công!');
    
        return Redirect("admin/supplier");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $row =Supplier::findOrFail($id);
        $row->is_deleted = 1;
        $row->save();

        Session::flash('success','Xóa NHÀ CUNG CẤP "'.$row->name.'" thành công!');

        return Redirect('admin/supplier');
    }
}
