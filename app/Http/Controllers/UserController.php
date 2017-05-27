<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Session;
use App\User;
use App\Group;
use View;
use Hash;

class UserController extends Controller
{
    CONST ROW_PER_PAGE = 9; //so ban ghi hien thi tren mot trang
    public function __construct(Request $request)
    {
        $list = User::where('is_deleted', 0)->get();
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
            $list = User::where('is_deleted', 0)->paginate(10);
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
        $group = Group::pluck('name', 'id');

        return view('admin.user.create', [ 'group'=>$group ] );
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
            'name'     => 'required',
            'email'    => 'required|email|unique:users,email',
            'password' => 'required|same:password_confirmation',
            'phone'     => 'required',
            'address'     => 'required'

        ]);

        $requestData = $request->all();
        $requestData['password'] = Hash::make($requestData['password']);
        $user = User::create($requestData);

        Session::flash('success', 'Thêm mới thành công');

        return redirect('admin/user');
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
        $user =User::findOrFail($id);

        return view('admin.user.editUser', [ 'user'=> $user ] );
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
       $user = User::findOrFail($id);
        $this->validate($request, [
            'name'     => 'required',
            'phone'     => 'required',
            'address'     => 'required'
        ]);

        $requestData = $request->all();
        $requestData['password'] = ($requestData['password'] != '') ? Hash::make($requestData['password']) : $user->password;
        $user->update($requestData);
       
        Session::flash('success', 'Cập nhật "'.$user->name.'" thành công');

        return redirect('admin/user');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user =User::findOrFail($id);
        $user->is_deleted = 1;
        $user->save();

        Session::flash('success','Xóa NGƯỜI DÙNG "'.$user->name.'" thành công!');

        return Redirect('admin/user');
    }
}
