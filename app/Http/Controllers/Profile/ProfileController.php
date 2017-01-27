<?php

namespace App\Http\Controllers\Profile;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;


class ProfileController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
		// user must be logged in to access this controller
		// otherwise -> login
        $this->middleware('auth');
    }

   /**
     * Show the profile for the given user.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id = '')
    {
		$user = (!empty($id)) ? User::find($id) : Auth::User();
        return view('profile.detail', ['user' => $user]);
    }
}