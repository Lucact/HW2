<?php

namespace App\Http\Controllers;

use Illuminate\Routing\Controller as BaseController;
use App\Models\User;

class HomeController extends BaseController
{
    public function home(){
        $user = User::find(session('utenti_id'));
        return view ('home');
    }
}

?>
