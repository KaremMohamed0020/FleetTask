<?php

namespace App\Repositories;

use App\Models\Station;
use App\Models\Trip;

class TripRepository
{
    public function findTrip($fromStation, $toStation)
    {
        $fromStationId = Station::where('name', $fromStation)->value('id');
        $toStationId = Station::where('name', $toStation)->value('id');

        return Trip::whereHas('stations', function ($query) use ($fromStationId) {
            $query->where('station_id', $fromStationId);
        })->whereHas('stations', function ($query) use ($toStationId) {
            $query->where('station_id', $toStationId);
        })->whereHas('buses', function ($query) {
            $query->where('available_seats', '>', 0);
        })->first();
    }
}
