<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Images extends Model
{
    protected $fillable = [
        'parent_id','parent_title','image'
    ];
}
