<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table='categories';
    public function products(){
        return $this->hasMany('App\Product','category_id','id');
    }
    public function images(){
        return $this->hasManyThrough('App\Image','App\Product','product_id','category_id','id');
    }

    public function order_details(){
        return $this->hasManyThrough('App\Order_detail','App\Product','product_id','category_id','id');
    }

}
