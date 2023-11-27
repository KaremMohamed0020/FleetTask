<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class StationsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Add Governorates data
        $governorates = [
            ['name' => 'Cairo'],
            ['name' => 'Alexandria'],
            ['name' => 'Port Said'],
            ['name' => 'Suez'],
            ['name' => 'Ismailia'],
            ['name' => 'Gharbia'],
            ['name' => 'Monufia'],
            ['name' => 'Dakahlia'],
            ['name' => 'Damietta'],
            ['name' => 'Sharqia'],
            ['name' => 'Qalyubia'],
            ['name' => 'Kafr El Sheikh'],
            ['name' => 'Giza'],
            ['name' => 'Faiyum'],
            ['name' => 'Beni Suef'],
            ['name' => 'Minya'],
            ['name' => 'Asyut'],
            ['name' => 'Sohag'],
            ['name' => 'Qena'],
            ['name' => 'Luxor'],
            ['name' => 'Aswan'],
            ['name' => 'Red Sea'],
            ['name' => 'New Valley'],
            ['name' => 'Matrouh'],
            ['name' => 'North Sinai'],
            ['name' => 'South Sinai'],
            ['name' => '6th of October'],
            ['name' => 'Helwan'],
        ];

        // Insert data into the table
        DB::table('stations')->insert($governorates);
    }
}
