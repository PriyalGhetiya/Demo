<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Blog;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**\
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $user = Auth::user();
        $role = $user->role_id;
        
        if($role == 1 ){
            $data  = Blog::all(); 
        }else{
            $data = Blog::get()->where('user_id',$user->id);
        }
        return view('home', compact('data'));
    }

    public function view(){
           $user = Auth::user();
           $role = $user->role_id;

           $data = Blog::get()->where('staus', 1);

           return view('welcome', compact('data'));
    }
}
