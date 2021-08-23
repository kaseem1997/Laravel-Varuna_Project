<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MediaCategory extends Model{
    
    protected $table = 'media_categories';

    protected $guarded = ['id'];

    protected $fillable = [];

    //public $timestamps = false;

    public function media() {
        return $this->hasMany('App\Media','category_id', 'id');
    }

    /**
     * Sub-Categories of this Category
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function children(){
        return $this->hasMany('App\MediaCategory', 'parent_id');
    }

    /**
     * Parent Category of this Category
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function parent(){
        return $this->belongsTo('App\MediaCategory', 'parent_id');
    }
}