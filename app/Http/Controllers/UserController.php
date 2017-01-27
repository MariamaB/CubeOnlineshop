<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserCreateRequest;
use App\Http\Requests\UserDeleteRequest;
use App\Http\Requests\UserEditRequest;
use App\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index() {
        $users = User::get();
        return view('users.index', compact('users'));
    }

    public function create() {
        return view('users.create');
    }

    public function store(UserCreateRequest $request) {
        User::create(array_add($request->only('name', 'email', 'invite_code'), 'password', bcrypt('secret')));
        return redirect()->route('users.index');
    }

    public function edit(User $user) {
        return view('users.edit', compact('user'));
    }

    public function update(User $user, UserEditRequest $request) {
        $user->update($request->all());
        return redirect()->route('users.index');
    }

    public function destroy(User $user, UserDeleteRequest $request) {
        $user->delete();
        return redirect()->route('users.index');
    }
}
