<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Recipes extends Model
{
    protected $table = 'recipes';

    public function user()  
    {  
        return $this->belongsTo(User::class); 
    }   
    
}
