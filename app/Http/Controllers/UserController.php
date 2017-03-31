<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Session;
use App\User;
use View;

class UserController extends Controller
{
    CONST ROW_PER_PAGE = 9; //so ban ghi hien thi tren mot trang
    public function __construct(Request $request)
    {
        $list = User::all();
        View::share('list', [compact('list')]);
    }
    public function index(Request $request)
    {  $data = $request->all();
        $keyword='';
        if($request->has('keyword')) {
            $keyword = $request->get('keyword');
            $list = User::where('name', 'like', '%'.$keyword . '%')
                ->paginate(5);
        }else{
            $list = User::paginate(5);
        }
        //Em lam tuong tu o trang nay nhu sau:

        return view('admin.user.userAdmins',
            ['list' => $list, 'keyword' => $keyword,]
        );
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.user.createUser');
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
//        if ($request->txtname){
//            $row = new User();
//            $row->name = $request->txtname;
//            $row->password = $request->password;
//            $row->save();
//            Session::flash('success','Thêm mới thành công');
//        }
//        return redirect('admin.user');
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
        $row =User::findOrFail($id);
        return view('admin.user.editUser',compact('row'));
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
        if(isset($id)&& $request->name!=null){
            $row=User::Where('id',$id)->first();
            $row->name=$request->name;
            $row->email=$request->email;
            $row->phone=$request->phone;
            $row->adderss=$request->adderss;
            $row->save();
            Session::flash('success','Sửa thành công!');
        }
        return Redirect("admin/user");

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $row =User::findOrFail($id);
        if ($row){
            $row->delete();
        }
        Session::flash('success','Xóa NGƯỜI DÙNG="'.$row->name.'" thành công!');
        return Redirect('admin/user');
    }
}
