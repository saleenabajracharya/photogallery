<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', 'PagesController@index')->middleware('auth');
// Route::get('/about', 'PagesController@about');
// Route::get('/services', 'PagesController@services');
Route::resource('posts','PostsController');
/*Route::get('/users/{id}/{name}', function ($id,$name) {
    return 'This is user ' .$name. ' with an id of ' .$id;
});
Route::get('/about', function () {
    return view('pages.about');
});

*/

Route::get('/', 'PostsController@index')->middleware('auth');

Route::get('/post', 'PostsController@index');

Auth::routes(['verify' =>true]);

Route::get('/dashboard', 'DashboardController@index');
Route::get('/search','PostsController@search')->name('search');
Route::post('/like','PostsController@postLikePost')->name('like');
