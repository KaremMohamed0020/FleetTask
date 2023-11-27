<?php

namespace App\Repositories;

use App\Models\User;

class UserRepository
{
    public function findByCredentials($credentials)
    {
        return User::where('email', $credentials['email'])->first();
    }
}
