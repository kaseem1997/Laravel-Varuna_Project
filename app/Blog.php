<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model{

    protected $table = 'blogs';

    protected $guarded = ['id'];

    protected $fillable = [];

    //public $timestamps = false;

    public function Images() {
        return $this->hasMany('App\BlogImage', 'blog_id');
    }

    function Category(){
        return $this->belongsTo('App\BlogCategory', 'category_id');
    }

    public function blogCategories(){
        return $this->belongsToMany('App\BlogCategory', 'categories_blog', 'blog_id')->withPivot('is_main');
    }

    public function blogtMainCategories(){
        return $this->blogCategories()->wherePivot('is_main', 1);

    }
}