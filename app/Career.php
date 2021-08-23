<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Career extends Model{

    protected $table = 'careers';

    protected $guarded = ['id'];

    protected $fillable = [];

    //public $timestamps = false;

   /* public function Images() {
        return $this->hasMany('App\BlogImage', 'blog_id');
    }*/

    function Category(){
        return $this->belongsTo('App\CareerCategory', 'category_id');
    }
}