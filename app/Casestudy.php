<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Casestudy extends Model{

    protected $table = 'case_studies';

    protected $guarded = ['id'];

    protected $fillable = [];

    //public $timestamps = false;

    public function Category(){
        return $this->belongsTo('App\CasestudyCategory', 'category_id');
    }

}