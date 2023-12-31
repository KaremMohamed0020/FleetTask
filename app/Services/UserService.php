<?php

namespace App\Services;

use App\Repositories\UserRepository;
use Illuminate\Support\Facades\Auth;

class UserService
{
    protected $userRepository;

    public function __construct(UserRepository $userRepository)
    {
        $this->userRepository = $userRepository;
    }

    public function attemptLogin($credentials)
    {
        if (!Auth::attempt($credentials)) {
            return null;
        }

        return Auth::user();
    }
}
