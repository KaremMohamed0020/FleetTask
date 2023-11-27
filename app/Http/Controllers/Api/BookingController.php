<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Services\BookingService;

class BookingController extends Controller
{
    protected $bookingService;

    public function __construct(BookingService $bookingService)
    {
        $this->bookingService = $bookingService;
    }

    public function bookSeat($fromStation, $toStation)
    {
        try {
            $message = $this->bookingService->bookSeat($fromStation, $toStation);
            return response()->json(['message' => $message]);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    public function getAvailableSeats($fromStation, $toStation)
    {
        try {
            $availableSeats = $this->bookingService->getAvailableSeats($fromStation, $toStation);
            return response()->json(['available_seats' => $availableSeats]);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
}
