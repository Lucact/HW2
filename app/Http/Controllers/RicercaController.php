<?php

namespace App\Http\Controllers;

use Illuminate\Routing\Controller as BaseController;
use App\Models\User;

class RicercaController extends BaseController
{
    public function ricerca(){
        $user = User::find(session('utenti_id'));
        return view ('ricerca');
    }
}

?>
