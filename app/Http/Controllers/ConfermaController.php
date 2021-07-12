<?php
namespace App\Http\Controllers;
use App\Models\User;

use Illuminate\Routing\Controller as BaseController;

class ConfermaController extends BaseController
{
    public function conferma()
    {
        return view('conferma');
    }

}
?>
