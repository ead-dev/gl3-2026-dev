<?php

use App\Http\Controllers\ArticleController;
use App\Http\Controllers\MigrationController;
use App\Models\Migration;
use App\Models\User;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/articles',[ArticleController::class,'index']); //afficher la liste des articles
Route::get('/articles/{id}',[ArticleController::class,'show']); //afficher un article en particulier connaissant son id
Route::get('/article/create',[ArticleController::class,'create']); //afficher le formulaire d'ajout d'un article
Route::post('/articles',[ArticleController::class,'store']); //ajouter un article





Route::get('/comments',[ArticleController::class,'comments']);

Route::get('/contact','App\Http\Controllers\MigrationController@index');
