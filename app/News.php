<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    protected $table='news';
    protected $fillable = [
        'title','image',
        'description', 'short_description'
    ];
}
