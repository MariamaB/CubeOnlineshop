<?php

namespace App\Http\Controllers;

use App\Article;
use App\Category;
use App\File;
use App\Http\Requests\CategoryCreateRequest;
use App\Http\Requests\CategoryDeleteRequest;
use App\Http\Requests\CategoryEditRequest;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index() {
        $categories = Category::with('articles', 'file')->get();
        return view('categories.index', compact('categories'));
    }

    public function show(Category $category) {
        return view('categories.show', compact('category'));
    }

    public function create() {
        return view('categories.create');
    }

    public function store(CategoryCreateRequest $request) {
        $file = File::createFromUpload($request->file('file'), 'categories');
        $category = Category::create([
            'name'=>$request->input('name'),
            'file_id'=>$file->id
        ]);

        return redirect()->route('categories.show', $category->id);
    }

    public function edit(Category $category) {
        return view('categories.edit', compact('category'));
    }

    public function update(Category $category, CategoryEditRequest $request) {
        if($request->hasFile('file')) {
            $category->file()->delete();
            $file = File::createFromUpload($request->file('file'), 'categories');
            $category->fill([
                'file_id'=>$file->id
            ]);
        }

        $category->update($request->only('name'));

        return redirect()->route('categories.show', $category->id);
    }

    public function destroy(Category $category, CategoryDeleteRequest $request) {
        $category->delete();

        return redirect('/');
    }
}
