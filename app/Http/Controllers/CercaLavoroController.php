<?php

namespace App\Http\Controllers;

use Illuminate\Routing\Controller as BaseController;
use App\Models\User;

class CercaLavoroController extends BaseController
{
    public function cerca_lavoro(){
        $user = User::find(session('utenti_id'));
        return view ('cerca_lavoro');
    }
}

?>
