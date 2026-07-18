<?php

use App\Http\Controllers\ArticleController;
use App\Http\Controllers\MigrationController;
use App\Models\Migration;
use App\Models\User;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/articles',[ArticleController::class,'index']);
Route::get('/comments',[ArticleController::class,'comments']);

Route::get('/contact','App\Http\Controllers\MigrationController@index');
