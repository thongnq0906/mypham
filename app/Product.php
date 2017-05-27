<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products';

    public function images () {
        return $this->hasMany('App\Image');
    }

    protected $fillable = [
        'name','description',
        'thumbnail','discount',
        'category_id','supplier_id',
        'product_date','available',
        'quantity','price'
    ];

    public function category(){
        return $this->hasOne(\App\Category::class,'id','category_id');
    }

    public function supplier(){
        return $this->hasOne(\App\Supplier::class,'id','supplier_id');
    }

    public function orderDetail(){
        return $this->hasMany('App\OrderDetail', 'product_id', 'id');
    }

}