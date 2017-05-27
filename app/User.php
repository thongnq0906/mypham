<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'group_id', 'phone', 'address'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function group() {
        return $this->belongsTo('App\Group', 'group_id', 'id');
    }

    public function isAdmin() {
        return $this->group->name == 'Admin' ? true : false;
    }
    public function isEmployee(){
        
        return $this->group->name == 'Employee' ? true :false;
    }

    public function order(){
        return $this->hasMany('App\Order', 'user_id', 'id');
    }
}
