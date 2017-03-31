<?php

namespace App\Http\Controllers;

use App\Http\Middleware\RedirectIfAuthenticated;
use Illuminate\Http\Request;
use App\Category;
use Illuminate\Support\Facades\Redirect;
use Session;
use View;

class CategoryController extends Controller
{
    CONST ROW_PER_PAGE = 9; //so ban ghi hien thi tren mot trang

    public function __construct(Request $request)
    {
        $list = Category::all();
        View::share('list', [compact('list')]);
    }

    public function index(Request $request)
    {
        $data = $request->all();
        $keyword = '';
        if ($request->has('keyword')) {
            $keyword = $request->get('keyword');
            $list = Category::where('name', 'like', '%' . $keyword . '%')
                ->paginate(6);
        } else {
            $list = Category::paginate(6);
        }
        //Em lam tuong tu o trang nay nhu sau:

        return view('admin.categoryAdmin.categoryAdmins',
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
        $categories = Category::all();
        return view('admin.categoryAdmin.createCategory', ['categories' => $categories]);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if ($request->txtname) {
            $row = new Category();
            $row->name = $request->txtname;
            $row->parent_id = $request->parent_id;
            $row->save();

            Session::flash('success', 'Thêm mới thành công');
        }
        return redirect('admin/category');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $row = Category::findOrFail($id);
        $categories = Category::all();

        return view('admin.categoryAdmin.editCategory', ['row' => $row, 'categories' => $categories]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if (isset($id) && $request->name != null) {
            $row = Category::Where('id', $id)->first();
            $row->name = $request->name;
            $row->parent_id = $request->parent_id;
            $row->save();
            Session::flash('success', 'Sửa thành công!');
        }
        return Redirect("admin/category");

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $row = Category::findOrFail($id);
        if ($row) {
            $row->delete();
        }
        Session::flash('success', 'Xóa DANH MỤC="' . $row->name . '" thành công!');
        return Redirect('admin/category');
    }

}
