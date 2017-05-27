<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table='orders';

    protected $fillable = [
      'user_id','support_id','orderdate','requiredate','receiver','description','amount','status'
    ];

    public function product(){
        return $this->hasOne(\App\User::class,'id','user_id');
    }

    public function get_statuses(){
        return array(
            1 => 'Chờ xử lý',
            2 => 'Đang xử lý',
            3 => 'Hoàn Thành',
            4 => 'Hủy'
        );
    }

    public function status_name(){
        $statuses = $this->get_statuses();
        return $statuses[$this->status];
    }

    public function user(){
        return  $this->belongsTo('App\User', 'user_id', 'id');
    }

    public function orderDetail(){
        return $this->hasMany('App\OrderDetail', 'order_id', 'id');
    }
}
