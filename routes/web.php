<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/
Auth::routes();
// articles
Route::get('articles/create', ['uses'=>'ArticleController@create', 'as'=>'articles.create']);
Route::post('articles/create', ['uses'=>'ArticleController@store', 'as'=>'articles.store']);
Route::get('articles/{article}/edit', ['uses'=>'ArticleController@edit', 'as'=>'articles.edit']);
Route::put('articles/{article}/edit', ['uses'=>'ArticleController@update', 'as'=>'articles.update']);
Route::delete('articles/{article}', ['uses'=>'ArticleController@destroy', 'as'=>'articles.destroy']);
Route::get('articles/{article}', ['uses'=>'ArticleController@show', 'as'=>'articles.show']);
Route::get('articles/', ['uses'=>'ArticleController@search', 'as'=>'articles.search']);
Route::get('articlesfiltered/', ['uses'=>'ArticleController@filteredsearch', 'as'=>'articles.filteredsearch']);

// categories
Route::get('category/create', ['uses'=>'CategoryController@create', 'as'=>'categories.create']);
Route::post('category/create', ['uses'=>'CategoryController@store', 'as'=>'categories.store']);
Route::get('category/{category}', ['uses'=>'CategoryController@show', 'as'=>'categories.show']);
Route::get('category/{category}/edit', ['uses'=>'CategoryController@edit', 'as'=>'categories.edit']);
Route::put('category/{category}/edit', ['uses'=>'CategoryController@update', 'as'=>'categories.update']);
Route::delete('category/{category}', ['uses'=>'CategoryController@destroy', 'as'=>'categories.destroy']);

Route::group(['middleware'=>'auth'], function() {
    // users
    Route::get('users', ['uses' => 'UserController@index', 'as' => 'users.index']);
    Route::get('users/create', ['uses'=>'UserController@create', 'as'=>'users.create']);
    Route::post('users/create', ['uses' => 'UserController@store', 'as' => 'users.store']);
    Route::get('users/{user}/edit', ['uses' => 'UserController@edit', 'as' => 'users.edit']);
    Route::put('users/{user}/edit', ['uses' => 'UserController@update', 'as' => 'users.update']);
    Route::delete('users/{user}', ['uses' => 'UserController@destroy', 'as' => 'users.destroy']);
});

//Auth::routes();
Route::post('/logout', ['uses'=>'Auth\LoginController@logout', 'as'=>'loginController.logout'] );
Route::get('/', ['uses'=>'CategoryController@index']);

Route::get('/home', 'HomeController@index');
Route::get('/profile/{id}', 'Profile\ProfileController@show');
Route::get('/user/activation/{token}', 'Auth\LoginController@activateUser')->name('user.activate');

Route::get('/termofservices', function() {
    return view('termofservices.termofservice');
});
