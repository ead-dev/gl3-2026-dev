<?php

namespace App\Http\Controllers;

use App\Models\Article;

class ArticleController extends Controller{

    function index(){
        //$request = request();
        $items = Article::where('id','<',10)->get();
        //dd($items);
       /* $items = [
            [
                'id'=>1,
                'nom'=>'ABC',
                'quantite'=>15,
                'prix'=>25000
            ],
            [
                'id'=>2,
                'nom'=>'Short',
                'quantite'=>7,
                'prix'=>75000
            ],
            [
                'id'=>3,
                'nom'=>'T-shirt',
                'quantite'=>23,
                'prix'=>16500
            ],
        ];
        */
        return view('Articles.index',compact('items'));
    }

}
