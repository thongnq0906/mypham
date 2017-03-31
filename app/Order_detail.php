<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Order_detail extends Model
{
    protected $table='order_details';

    public static function getBestSell () {
        return DB::select('SELECT products.*, COUNT(*) as total 
                            FROM order_details 
                            INNER JOIN products ON order_details.product_id = products.id
                            GROUP BY order_details.product_id ORDER BY total DESC, products.created_at DESC LIMIT 0, 20');
    }
}
