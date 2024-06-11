<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class UsersSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $faker = Faker::create('ja_JP');

        $params = [];

        for ($i=0; $i < 1000000; $i++) {
            $params[] = [
                'name' => $faker->name(),
                'email' => "test{$i}@example.com",
                'password' => 'testpassword',
            ];

            if (count($params) >= 1000) {
                User::insert($params);
                $params = [];
            }
        }
    }
}
