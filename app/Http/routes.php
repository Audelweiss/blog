<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

//Route::get('/', function () {
//    return view('blog/index');
//});
//
////Route::resource('/blog', 'AccueilBlog');
//Route::get('/{id?}', 'AccueilBlog@show');
////Route::get('/', 'AccueilBlog@index');

Route::get('/', function () {
    return redirect('/blog');
});

Route::get('blog', 'BlogController@index');
Route::get('blog/{slug}', 'BlogController@showPost');
//Route::get('admin/post/{id}/edit', 'Admin\PostController@edit');

// Admin area
Route::get('admin', function () {
  return redirect('admin/post');
});
$router->group([
  'namespace' => 'Admin',
  'middleware' => 'auth',
], function () {
  Route::resource('admin/post', 'PostController');
});
Route::get('login', function () {
    return view('auth/login');
});
// Logging in and out
Route::get('auth/login', 'Auth\AuthController@getLogin');
Route::post('auth/login', 'Auth\AuthController@postLogin');
Route::get('auth/logout', 'Auth\AuthController@getLogout');