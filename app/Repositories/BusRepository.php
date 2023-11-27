<?php

namespace App\Repositories;

use App\Models\Trip;

class BusRepository
{
    public function getAvailableBus(Trip $trip)
    {
        return $trip->buses()->where('available_seats', '>', 0)->first();
    }

    public function getAvailableSeats(Trip $trip)
    {
        $bus = $this->getAvailableBus($trip);

        return $bus ? $bus->available_seats : 0;
    }
}
