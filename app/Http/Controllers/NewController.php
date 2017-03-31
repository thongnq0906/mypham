<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\News;
use App\Supplier;

use Session;


class NewController extends Controller
{
    CONST ROW_PER_PAGE = 9;
    private $footer = null;

    public function __construct()
    {
        $this->footer = Supplier::all();
    }
    public function index()
    {
        $list=News::paginate(self::ROW_PER_PAGE);
        return view('admin.new.newAdmin',['list'=>$list, 'footer' => $this->footer]);
    }

    public function create()
    {
        return view('admin.new.createNew');
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
            $row = new News();
            $row->title=$request->txtname;
            $row->short_description=$request->txtMotan;
            $row->description=$request->txtMota;
            $fileName = $request->file('txtimage')->getClientOriginalName();
            $filePath = public_path('/uploads/new/');
            $request->file('txtimage')->move($filePath, $fileName);
            $row->image=$fileName;
            $row->save();
            Session::flash('success','Thêm mới thành công');
        }

        return Redirect("admin/new");
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
        $row =News::findOrFail($id);
        return view('admin.new.editNew',compact('row'));
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
            $row=News::Where('id',$id)->first();
            $row->title=$request->txtname;
            $row->short_description=$request->txtMotan;
            $row->description=$request->txtMota;
            if($request->file('txtimage')!=null){
                $fileName = $request->file('txtimage')->getClientOriginalName();
                $filePath = public_path('/uploads/new/');
                $request->file('txtimage')->move($filePath, $fileName);
                $row->image=$fileName;
            }

            $row->save();
            Session::flash('success','Sửa thành công!');
        }
        return Redirect("admin/new");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $row =News::findOrFail($id);
        if ($row){
            $row->delete();
        }
        Session::flash('success','Xóa Tin="'.$row->title.'" thành công!');
        return Redirect('admin/new');
    }
}
