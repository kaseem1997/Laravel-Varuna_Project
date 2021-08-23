<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CareerCategory extends Model{
    
    protected $table = 'career_categories';

    protected $guarded = ['id'];

    protected $fillable = [];

    //public $timestamps = false;

    public function careers() {
        return $this->hasMany('App\Career','category_id', 'id');
    }

    /**
     * Sub-Categories of this Category
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function children(){
        return $this->hasMany('App\CareerCategory', 'parent_id');
    }

    /**
     * Parent Category of this Category
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function parent(){
        return $this->belongsTo('App\CareerCategory', 'parent_id');
    }
}