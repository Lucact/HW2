<?php
use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('home');
});

Route::get('login', 'LoginController@login')->name('login');
Route::post('/checkLogin', 'LoginController@checkLogin')->name("checkLogin");
Route::get('logout', 'LoginController@logout');

Route::get("cerca_lavoro", "CercaLavoroController@cerca_lavoro")->name("cerca_lavoro");

Route::get('subscribe', "RegisterController@subscribe");
Route::post('subscribe', "RegisterController@aggiungi");


Route::get('home', 'HomeController@home');
Route::get('accesso', "AccessoController@accesso");


Route::get('ricerca', "RicercaController@ricerca");

Route::get('preferiti', "PreferitiController@preferiti");

Route::get('conferma', "ConfermaController@conferma");






Route::get('mostraPreferiti', "PreferitiController@mostraPreferiti");


Route::post('aggiungiPreferiti', "PreferitiController@aggiungiPreferiti");
Route::post('rimuoviPreferiti', "PreferitiController@rimuoviPreferiti");


Route::post('aggiungiCommento', "CommentiController@aggiungiCommento");
Route::post('cercaCommenti', "CommentiController@cercaCommenti");
