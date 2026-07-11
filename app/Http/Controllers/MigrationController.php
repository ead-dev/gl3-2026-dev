<?php

namespace App\Http\Controllers;

use App\Models\Migration;
use Illuminate\Http\Request;

class MigrationController extends Controller
{
    //
    function index(){
        $migs = Migration::all();
        return view('contact',compact('migs'));
    }
}
