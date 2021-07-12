<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Offer extends Model
{
    protected $table="offers";

    protected $fillable = [
        'titolo', 'descrizione', 'link', 'username'
    ];

    protected $casts = [
        "created_at" => "datetime:d/m/Y H:i:s"
    ];

    protected $hidden = [
        'user_id'
    ];

    public function user(){
        return $this->belongsTo("App\User");
    }

    public function offer(){
        return $this->belongsToMany("App\User", "offers",  "offer_id", "user_id");
    }

}
