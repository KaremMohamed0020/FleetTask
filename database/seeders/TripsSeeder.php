<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TripsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $trips = [
            // Trip with seats
            [
                'name' => 'Cairo to Asyut',
                'stations' => ['Cairo', 'AlFayyum', 'AlMinya', 'Asyut'],
                'has_seats' => true,
            ],
            // Trip without seats
            [
                'name' => 'Alexandria to Luxor',
                'stations' => ['Alexandria', 'Cairo', 'Asyut', 'Luxor'],
                'has_seats' => false,
            ],
            // Trip with multiple stations
            [
                'name' => 'Giza to Aswan',
                'stations' => ['Giza', 'Cairo', 'AlMinya', 'Asyut', 'Luxor', 'Aswan'],
                'has_seats' => true,
            ],
            // Another Trip with seats
            [
                'name' => 'Suez to Qena',
                'stations' => ['Suez', 'Cairo', 'Minya', 'Asyut', 'Sohag', 'Qena'],
                'has_seats' => true,
            ],
            // Trip without seats and multiple stations
            [
                'name' => 'Aswan to Alexandria',
                'stations' => ['Aswan', 'Luxor', 'Sohag', 'Minya', 'Cairo', 'Alexandria'],
                'has_seats' => false,
            ],
            // Add more examples as needed
        ];

        foreach ($trips as $trip) {
            // Create Trip
            $newTrip = DB::table('trips')->insertGetId(['name' => $trip['name']]);

            // Link Trip to Existing Stations
            foreach ($trip['stations'] as $stationName) {
                $stationId = DB::table('stations')->where('name', $stationName)->value('id');

                if (!$stationId) {
                    // Station not found, you may want to handle this case
                    continue;
                }

                DB::table('station_trip')->insert(['station_id' => $stationId, 'trip_id' => $newTrip]);
            }

            // Create Bus if the trip has seats
            if ($trip['has_seats']) {
                DB::table('buses')->insert(['trip_id' => $newTrip, 'available_seats' => 12]);
            } else {
                DB::table('buses')->insert(['trip_id' => $newTrip, 'available_seats' => 0]);
            }
        }
    }
}
