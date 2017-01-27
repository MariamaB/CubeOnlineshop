<?php

namespace App\Http\Controllers;

use App\Article;
use App\Category;
use App\File;
use App\Http\Requests\ArticleCreateRequest;
use App\Http\Requests\ArticleDeleteRequest;
use App\Http\Requests\ArticleEditRequest;
use Illuminate\Http\Request;

class ArticleController extends Controller
{
    //alle Artikel anzeigen
    public function show(Article $article) {
        return view('articles.show', compact('article'));
    }

    //Artikel anlegen
    public function create() {
        $categories = Category::get();
        return view('articles.create', compact('categories'));
    }
//Bild einbinden
    public function store(ArticleCreateRequest $request) {
        $file = File::createFromUpload($request->file('file'), 'articles');
        $article = new Article();
        $article->fill(array_add($request->except('file', '_token'), 'file_id', $file->id));
        $article->save();

        return redirect()->route('articles.show', $article->id);
    }

    //Artikel bearbeiten
    public function edit(Article $article) {
        $categories = Category::get();
        return view('articles.edit', compact('article', 'categories'));
    }

    //Artikel updaten
    public function update(Article $article, ArticleEditRequest $request) {
        if($request->hasFile('file')) {
            $article->file()->delete();
            $file = File::createFromUpload($request->file('file'), 'articles');
            $article->fill([
                'file_id'=>$file->id
            ]);
        }

        $article->update($request->except('file'));

        return redirect()->route('articles.show', $article->id);
    }
//Artikel löschen
    public function destroy(Article $article, ArticleDeleteRequest $request) {
        $article->delete();

        return redirect()->route('categories.show', $article->category_id);
    }
  //article search
    public function search(Request $request){
        $term = trim($request->get('term'));

        $articles = Article::query()
            ->where('name', 'like', '%'.$term.'%' ) //'%'.$term.'%'
            ->orWhere('description', 'like', '%'.$term.'%' )
            ->get();

        return view ('articles.showmulti',  compact('articles'));
    }

    //article filter
    public function filteredsearch(Request $request){
        $term = trim($request->get('term'));
        $ab_price = trim($request->get('ab_price'));
        $bis_price = trim($request->get('bis_price'));
        $articles = Article::query()
            ->where('price',  '>=', $ab_price) // $ab_price
            ->where('price',  '<=', $bis_price) //$bis_price
            ->where('name', 'like', '%'.$term.'%' ) //'%'.$term.'%'
            ->orWhere('description', 'like', '%'.$term.'%' )
            ->where('price',  '>=', $ab_price) // $ab_price
            ->where('price',  '<=', $bis_price) //$bis_price
            ->get();

        return view ('articles.showmulti',  compact('articles'));


    }

}
