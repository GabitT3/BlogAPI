<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CommentController extends Controller
{
 public function index(Post $post)
{
    
    return response()->json($post->comments);
}

public function store(Request $request, Post $post)
{
    $request->validate([
        'content' => 'required|string',
    ]);

    $comment = $post->comments()->create([
        'content' => $request->content,
        'user_id' => auth()->id(), 
    ]);

    return response()->json($comment, 201); 
}
}
