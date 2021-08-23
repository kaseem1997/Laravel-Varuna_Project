<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EmployeeStory extends Model{

    protected $table = 'employee_stories';

    protected $guarded = ['id'];

    protected $fillable = [];

    //public $timestamps = false;

}