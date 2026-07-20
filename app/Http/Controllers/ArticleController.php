<?php

namespace App\Http\Controllers;

use App\Models\Article;

class ArticleController extends Controller{

    function index(){
        //$request = request();
        $items = Article::paginate(10);
        return view('Articles.index',compact('items'));
    }

    function create(){
        return view('Articles.create');
    }


    function show($article_id){
        $item = Article::find($article_id);
        //dd($item);
        return view('Articles.show',compact('item'));
    }


    public function store(){

        $rq = request();
        //dd($rq->all());
        /* $data = request()->validate([
            'title'=>'required',
            'content'=>'required',
        ]); */
        $data = $rq->all();
        Article::create($data);
        return redirect('/articles');
    }

    public function comments(){
        $comments = [
            [
                'id'=>1,
                'nom'=>'ABC',
                'commentaire'=>'Ceci est un commentaire'
            ],
            [
                'id'=>2,
                'nom'=>'Short',
                'commentaire'=>'Ceci est un commentaire'
            ],
            [
                'id'=>3,
                'nom'=>'T-shirt',
                'commentaire'=>'Ceci est un commentaire'
            ],
        ];
        return view('Comments.index',compact('comments'));
    }

}
