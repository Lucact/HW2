<?php

namespace App\Http\Controllers;

use Illuminate\Routing\Controller as BaseController;
use App\Models\User;
use App\Models\Offer;
use App\Models\Comment;

class CommentiController extends BaseController
{

    public function aggiungiCommento()
    {
        $myUser = session('user_id');
        $request = request();


        $comment = Comment::create([
            "id_offerta" => $request->id_offerta,
            "contenuto" => $request->contenuto,
            "username" => $myUser,
        ]);
        if($comment !== NULL){
            echo 111;
        }
        else{
            echo 222;
        }

    }
    public function cercaCommenti()
    {
        $request = request();
        $id_offerta = $request->id_offerta;



        if(!Comment::where('id_offerta', $id_offerta)->first()){
            return -1;
        }
        else{
            $comment = Comment::where('id_offerta', $id_offerta)->get();

            return $comment;
        }

    }









}

?>
