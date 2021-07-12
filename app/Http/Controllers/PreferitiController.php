<?php

namespace App\Http\Controllers;

use Illuminate\Routing\Controller as BaseController;
use App\Models\User;
use App\Models\Offer;

class PreferitiController extends BaseController
{
    public function preferiti(){
        $user = User::find(session('utenti_id'));
        return view ('preferiti');
    }

    public function mostraPreferiti(){
        $request = request();
        $myUser = session('user_id');

        if(!Offer::where('username', $myUser)->first()){
            return -1;
        }
        else{
            $offer = Offer::where('username', $myUser)->get();
            return $offer;
        }
    }

    public function aggiungiPreferiti()
    {
        $myUser = session('user_id');
        $request = request();


        $offer = Offer::create([
            "titolo" => $request->titolo,
            "descrizione" => $request->descrizione,
            "link" => $request->link,
            "username" => $myUser,
        ]);
        if($offer !== NULL){
            echo 1;
        }
        else{
            echo 2;
        }

    }

    public function rimuoviPreferiti()
    {
        $request = request();
        $myUser = session('user_id');


        $offer = Offer::where('titolo', $request->titolo)->where('username', $myUser)->first();

        $offer->delete();

        if($offer === NULL){
            echo 11;
        }
        else{
            echo 22;
        }
    }
}
?>
