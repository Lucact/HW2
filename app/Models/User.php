<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class User extends Model{
    protected $table="users";

    protected $fillable = [
        "username",
        "password",
        "nome",
        "cognome",
        "telefono"
    ];

    protected $casts = [
        "created_at" => "datetime:d/m/Y H:i:s"
    ];
    protected $hidden=['password'];

}
?>

