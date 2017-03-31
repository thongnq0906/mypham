<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    protected $table='suppliers';

    public function products(){
        return $this->hasMany('App\Product','supplier_id','id');
    }
    public function images(){
        return $this->hasManyThrough('App\Image','App\Product','product_id','supplier_id','id');
    }

    public function order_details(){
        return $this->hasManyThrough('App\Order_detail','App\Product','product_id','supplier_id','id');
    }
}
