<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class OrderDetail extends Model
{
    protected $table='order_details';

    public static function getBestSell () {
        return DB::select('SELECT products.*, COUNT(*) as total 
                            FROM order_details 
                            INNER JOIN products ON order_details.product_id = products.id
                            GROUP BY order_details.product_id ORDER BY total DESC, products.created_at DESC LIMIT 0, 20');
    }

    public function order(){
    	return $this->belongsTo('App\Order', 'order_id', 'id');
    }

    public function product(){
    	return $this->belongsTo('App\Product', 'product_id', 'id');
    }
}
