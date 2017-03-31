<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contact;
use Session;

class ContactController extends Controller
{
    //
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $contact=Contact::all();
        return view('admin.contact.contactAdmin',['contact'=>$contact]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.contact.createContact');
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
            $row = new Contact();
            $row->name=$request->txtname;
            $row->email=$request->txtEmail;
            $row->phone=$request->txtPhone;
            $row->message=$request->txtmessage;
            $row->save();
            Session::flash('success','Thêm mới thành công');
        }

        return Redirect("admin/contact");
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
        $row =Contact::findOrFail($id);
        return view('admin.contact.editContact',compact('row'));
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
            $row=Contact::Where('id',$id)->first();
            $row->name=$request->txtname;
            $row->email=$request->txtEmail;
            $row->phone=$request->txtPhone;
            $row->message=$request->txtmessage;
            $row->save();
            Session::flash('success','Sửa thành công!');
        }
        return Redirect("admin/contact");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $row =Contact::findOrFail($id);
        if ($row){
            $row->delete();
        }
        Session::flash('success','Xóa liên hệ="'.$row->name.'" thành công!');
        return Redirect('admin/contact');
    }
}
