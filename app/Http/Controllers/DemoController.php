<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Demo;

class DemoController extends Controller
{
    public function save(Request $req){
        $demo = new Demo;
        $demo->firstname = $req->firstname;
        $demo->lastname = $req->lastname;
        $demo->country = $req->country;
        $demo->subject = $req->subject;
        $demo->save();
        return redirect('demo');
    }
}
