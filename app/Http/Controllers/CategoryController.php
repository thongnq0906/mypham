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
        $list = Category::where('is_deleted', 0)->get();

        View::share('list', [compact('list')]);
    }

    public function index(Request $request)
    {
        $data = $request->all();
        $keyword = '';
        if ($request->has('keyword')) {
            $keyword = $request->get('keyword');
            $list = Category::where('is_deleted', 0)->where('name', 'like', '%' . $keyword . '%')
                ->paginate(10);
        } else {
            $list = Category::where('is_deleted', 0)->paginate(10);
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
        $categories = Category::where('is_deleted', 0)->get() ;

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
        $this->validate($request, [
            'name'     => 'required|unique:categories, name'
        ]);

        $category = new Category();
        $category->name = $request->name;
        $category->parent_id = $request->parent_id;
        $category->save();

        Session::flash('success', 'Thêm mới thành công');
        
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

        $categories = Category::where('is_deleted', 0)->get();

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
        $this->validate($request, [
            'name'     => 'required'
        ]);

        $row = Category::findOrFail($id);
        $row->name = $request->name;
        $row->parent_id = $request->parent_id;
        $row->save();

        Session::flash('success', 'Sửa thành công!');
    
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
        $category = Category::findOrFail($id);
        $category->is_deleted = 1;
        $category->save();
       
        Session::flash('success', 'Xóa DANH MỤC"' . $category->name . '" thành công!');

        return Redirect('admin/category');
    }

}
