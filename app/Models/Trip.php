<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Trip extends Model
{
    use HasFactory;

    protected $fillable = ['name'];

    public function stations()
    {
        return $this->belongsToMany(Station::class);
    }

    public function buses()
    {
        return $this->hasMany(Bus::class);
    }
}
