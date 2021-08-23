<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Demo extends Model
{
    //
    protected $table = 'demos';
    public $timestamps = false;
}

// class User extends Model {

//     public $timestamps = false;

//     public static function boot()
//     {
//         parent::boot();

//         static::creating(function ($model) {
//             $model->created_at = $model->freshTimestamp();
//         });
//     }

// }