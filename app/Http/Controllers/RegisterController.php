<?php

namespace App\Http\Controllers;
use Illuminate\Routing\Controller;
use App\Models\User;

class RegisterController extends Controller
{
    public function subscribe(){
        if (session('user_id') != null) {
            return redirect('cerca_lavoro');
        } else {
            //verifichiamo se c'è un errore nel login
            return view('subscribe')
                ->with('csrf_token', csrf_token());
        }
    }

    public function aggiungi()
    {
        $request = request();

        if (!User::where('username', $request->username)->first()) {
            //se lo username non esiste:
            $user = User::create([
                'username' => $request->username,
                'nome' => $request->nome,
                'cognome' => $request->cognome,
                'telefono' => $request->telefono,
                'password' => $request->password,
                //'password' => Hash::make($request->password)
            ]);
            if ($user !== NULL) {
                return redirect('conferma');
            }
        } else {
            $old_username = $request->username;
            $old_nome = $request->nome;
            $old_cognome = $request->cognome;
            $old_telefono = $request->telefono;
            return view('subscribe')
                ->with('csrf_token', csrf_token())
                ->with('old_nome', $old_nome)
                ->with('old_cognome', $old_cognome)
                ->with('old_telefono', $old_telefono)
                ->with('old_username', $old_username);
        }

    }
}

?>
