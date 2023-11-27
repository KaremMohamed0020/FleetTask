<?php

// app/Services/BookingService.php

namespace App\Services;

use App\Models\Trip;
use App\Repositories\TripRepository;
use App\Repositories\BusRepository;

class BookingService
{
    protected $tripRepository;
    protected $busRepository;

    public function __construct(TripRepository $tripRepository, BusRepository $busRepository)
    {
        $this->tripRepository = $tripRepository;
        $this->busRepository = $busRepository;
    }

    public function bookSeat($fromStation, $toStation)
    {
        $trip = $this->tripRepository->findTrip($fromStation, $toStation);

        if (!$trip) {
            throw new \Exception('Trip not found');
        }

        $bus = $this->busRepository->getAvailableBus($trip);

        if (!$bus) {
            throw new \Exception('No available seats');
        }

        // Logic to book a seat for the user

        return 'Seat booked successfully';
    }

    public function getAvailableSeats($fromStation, $toStation)
    {
        $trip = $this->tripRepository->findTrip($fromStation, $toStation);

        if (!$trip) {
            throw new \Exception('Trip not found');
        }

        return $this->busRepository->getAvailableSeats($trip);
    }
}
