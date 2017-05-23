<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
// dau tien em nên hiểu là vì trang sản phẩm và trang hiển thi danh muc em su dung cùng một file view nên nó mới sinh ra lỗi này
// nếu kho xử lý cả 2 trường hợp thi kiểu gì e cũng lỗi
Route::get('/', 'HomeController@index');
Route::get('/category/{id}', 'HomeController@show');
Route::get('/left', 'HomeController@index');
Route::get('/footer', 'HomeController@footer');
Route::get('/categories', 'HomeController@categories');
Route::get('/blog', 'HomeController@blog');
Route::get('/blog_detail/{id}', 'HomeController@blog_detail');
Route::get('/about', 'HomeController@about');
Route::get('/checkout', 'HomeController@checkout');
Route::get('/wishlist', 'HomeController@wishlist');
Route::get('/support', 'HomeController@support');
Route::get('/contact', 'HomeController@contact');
Route::post('/contact', 'HomeController@updatecontact');
Route::get('/detail/{id}', 'ProductController@show');
Route::get('/image','ImageController@index')->name('image');
Route::get('product', 'ProductController@product');
Route::get('muahang/{id}', 'MuahangController@muahang');
Route::get('order', 'MuahangController@hienthi');
Route::post('order/create', 'OrderController@checkout');
Route::get('order/delete/{id}', 'MuahangController@deleteorder');
Route::post('order/update/{id}', 'MuahangController@update');
Route::post('product/{product}','ProductController@update')->name('product.update');
Route::get('/home', function () {
    return redirect('/');
});

Auth::routes();
Route::group(['middleware' => 'auth'], function (){
    //Tat ca nhung duong link dat trong nay deu can phai login - User
    Route::get('/change_password', 'HomeController@change_password');
    Route::post('/update_password', 'HomeController@update_password');
    Route::group(['middleware' => 'admin'], function (){
        ////Tat ca nhung duong link dat trong nay deu can phai login va tai khoan phai la Admin
        Route::get('/admin', 'HomeController@homeAdmin');
        Route::get('/admin/statistic', 'HomeController@statistic');
        Route::get('/admin/home', 'HomeController@homeAdmin');
        Route::get('admin/user/', 'UserController@index');
        Route::get('admin/user/{id}/edit', 'UserController@edit');
        Route::patch('admin/user/{id}/edit', 'UserController@update');
        Route::delete('admin/user/{id}', 'UserController@destroy');
        Route::resource('admin/category', 'CategoryController');
        Route::resource('admin/order', 'OrderController');
        Route::post('admin/order/change_status', 'OrderController@change_status')->name('admin.order.change_status');
        Route::resource('admin/product', 'ProductController');
        Route::resource('admin/orderDetail', 'OrderDetailController');
        Route::resource('admin/supplier', 'SupplierController');
        Route::resource('admin/new', 'NewController');
        Route::resource('admin/image', 'ImageController');
        Route::resource('admin/contact', 'ContactController');
    });
});
Route::get('logout', function(){
    return redirect('login');
});
