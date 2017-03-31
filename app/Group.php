<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
   protected $table = 'groups';

   public function users(){
       return $this->hasMany('App\User','group_id','id');
   }

    public function order(){
        return $this->hasManyThrough('App\Order','App\User','user_id','group_id','id');
    }

    public function order_detail(){
        return $this->hasManyThrough('App\Order_detail','App\Order','App\User','order_id','user_id','group_id','id');
    }
}
