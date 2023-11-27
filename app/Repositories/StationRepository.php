<?php

namespace App\Repositories;

use App\Models\Station;

class StationRepository
{
    public function getAll()
    {
        return Station::all();
    }
}
