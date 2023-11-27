<?php

use App\Http\Controllers\Api\BookingController;
use App\Http\Controllers\Api\AuthController;
use Illuminate\Support\Facades\Route;

Route::prefix('/Auth')->group(function () {
    Route::post('/login', [AuthController::class, 'login']);
});

Route::middleware('auth:api')->group(function () {
    Route::prefix('/bookings')->group(function () {
        Route::post('/book-seat/{fromStation}/{toStation}', [BookingController::class, 'bookSeat']);
        Route::get('/available-seats/{fromStation}/{toStation}', [BookingController::class, 'getAvailableSeats']);
    });
});
