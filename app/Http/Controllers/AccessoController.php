<?php

namespace App\Http\Controllers;

use Illuminate\Routing\Controller as BaseController;
use App\Models\User;

class AccessoController extends BaseController
{
    public function accesso(){
        $user = User::find(session('utenti_id'));
        return view ('accesso')->with('csrf_token', csrf_token());
    }
}

?>
