<?php

namespace Tests\Feature;

// use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use Laravel\Passport\Passport;
use Database\Factories\UserFactory;

class BookingTest extends TestCase
{
    public function testUserCanBookASeat()
    {
        // Arrange
        Passport::actingAs(UserFactory::new()->create());

        $fromStation = 'Cairo';
        $toStation = 'Asyut';

        // Act
        $response = $this->post("/api/bookings/book-seat/{$fromStation}/{$toStation}");

        // Assert
        $response->assertStatus(200);
        $response->assertJson(['message' => 'Seat booked successfully']);
    }

    public function testUserCanGetAvailableSeats()
    {
        // Arrange
        Passport::actingAs(UserFactory::new()->create());

        $fromStation = 'Cairo';
        $toStation = 'Asyut';

        // Act
        $response = $this->get("/api/bookings/available-seats/{$fromStation}/{$toStation}");

        // Assert
        $response->assertStatus(200);
        $response->assertJsonStructure(['available_seats']);
    }

    public function testUserGetsErrorForInvalidTrip()
    {
        // Arrange
        Passport::actingAs(UserFactory::new()->create());

        $fromStation = 'InvalidStation';
        $toStation = 'InvalidStation';

        // Act
        $response = $this->get("/api/bookings/available-seats/{$fromStation}/{$toStation}");

        // Assert
        $response->assertStatus(500);
        $response->assertJson(['error' => 'Trip not found']);
    }
}
