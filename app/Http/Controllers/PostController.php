<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\post;

class PostController extends Controller
{
    public function index(){
        return view('blog',[
            "title" => "Blog",
            "post" => post::all()
        ]);
    }
    
    public function show(post $post){
        return view('post',[
            "title" => "Single Post",
            "post" => $post
        ]);
    }
}
