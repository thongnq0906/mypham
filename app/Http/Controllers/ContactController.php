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
        $contact=Contact::paginate(10);

        return view('admin.contact.contactAdmin',['contact'=>$contact]);
    }

   
   
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

        $row =Contact::findOrFail($id);
        $row->status = $request->status ;
        $row->save();
        Session::flash('success','Sửa thành công!');
        
        return Redirect("admin/contact");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
   
}
