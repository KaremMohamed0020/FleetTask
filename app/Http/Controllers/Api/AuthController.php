<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Services\UserService;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;


class AuthController extends Controller
{
    protected $userService;

    public function __construct(UserService $userService)
    {
        $this->userService = $userService;
    }

    public function login(Request $request)
    {
        $credentials = $request->only('email', 'password');

        $user = $this->userService->attemptLogin($credentials);

        if (!$user) {
            return response()->json(['message' => 'Unauthorized'], 401);
        }

        $token = $user->createToken('Fleet')->accessToken;

        return response()->json(['token' => $token]);
    }
}
