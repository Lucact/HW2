<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $table="comments";

    protected $fillable = [
        'id_offerta', 'contenuto', 'username'
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

    public function comments(){
        return $this->belongsToMany("App\User", "likes",  "offer_id", "user_id");
    }

}
