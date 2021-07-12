<?php
namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Support\Facades\Session;

use Illuminate\Routing\Controller as BaseController;

class LoginController extends BaseController
{
    public function login(){
        //Verifichiamo se l'utente ha gia effettuato il login:
        if(session('user_id') != null){
            return redirect('cerca_lavoro');
        }
        else{
            //verifichiamo se c'è un errore nel login:
            return view('accesso')
                ->with('csrf_token', csrf_token());
        }
    }

    public function checkLogin(){
        //verifichiamo che l'utente esista
        $user = User::where('username', request('username'))->where('password', request('password'))->first();
        //print_r($user);
        if($user !== null){
            //credenziali valide
            Session::put("user_id", $user->username);
            return redirect('cerca_lavoro');
        }
        else {
            return redirect('login')->withInput();
        }
    }

    public function logout(){
        //Eliminiamo i dati di sessione e torniamo al login:
        Session::flush();
        return redirect('accesso');
    }
}
?>

