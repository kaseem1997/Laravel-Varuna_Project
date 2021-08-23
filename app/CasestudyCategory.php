<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CasestudyCategory extends Model{
    
    protected $table = 'casestudy_categories';

    protected $guarded = ['id'];

    protected $fillable = [];

    //public $timestamps = false;

    public function caseStudy() {
        return $this->hasMany('App\Casestudy','category_id', 'id');
    }

    /**
     * Sub-Categories of this Category
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function children(){
        return $this->hasMany('App\CasestudyCategory', 'parent_id');
    }

    /**
     * Parent Category of this Category
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function parent(){
        return $this->belongsTo('App\CasestudyCategory', 'parent_id');
    }
}