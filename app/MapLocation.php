<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MapLocation extends Model{

    protected $table = 'map_locations';

    protected $guarded = ['id'];

    protected $fillable = [];

    //public $timestamps = false;

}