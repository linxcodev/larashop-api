<?php

use Illuminate\Http\Request;

Route::group(['prefix' => 'v1'], function () {
  // public
  Route::post('login', 'AuthController@login');
  Route::post('register', 'AuthController@register');

  Route::get('categories', 'CategoryController@index');
  Route::get('categories/slug/{slug}', 'CategoryController@slug');
  Route::get('categories/random/{count}', 'CategoryController@random');

  Route::get('books/top/{count}', 'BookController@top');
  Route::get('books', 'BookController@index');
  Route::get('books/slug/{slug}', 'BookController@slug');
  Route::get('books/search/{keyword}', 'BookController@search');

  Route::get('provinces', 'ShopController@provinces'); // <= ini
  Route::get('cities', 'ShopController@cities');
  Route::get('couriers', 'ShopController@couriers');

  // private
  Route::middleware(['auth:api'])->group(function () {
    Route::post('logout', 'AuthController@logout');
    Route::post('shipping', 'ShopController@shipping');
    Route::post('services', 'ShopController@services');
    Route::post('payment', 'ShopController@payment');
    Route::get('my-order', 'ShopController@myOrder');
  });
});
