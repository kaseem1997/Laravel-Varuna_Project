<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Media extends Model{

    protected $table = 'media';

    protected $guarded = ['id'];

    protected $fillable = [];

    //public $timestamps = false;

    public function Category(){
        return $this->belongsTo('App\MediaCategory', 'category_id');
    }

}