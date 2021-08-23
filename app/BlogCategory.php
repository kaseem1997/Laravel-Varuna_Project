<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BlogCategory extends Model{
    
    protected $table = 'blog_categories';

    protected $guarded = ['id'];

    protected $fillable = [];

    //public $timestamps = false;

    /*public function Blogs() {
        return $this->hasMany('App\Blog','category_id');
    }*/

    public function Blogs(){
        return $this->belongsToMany('App\Blog', 'categories_blog', 'blog_category_id');
    }

    /**
     * Sub-Categories of this Category
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function children(){
        return $this->hasMany('App\BlogCategory', 'parent_id');
    }

    /**
     * Parent Category of this Category
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function parent(){
        return $this->belongsTo('App\BlogCategory', 'parent_id');
    }
}