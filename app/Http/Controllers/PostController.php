<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
        return Post::with('comments')->get();
    }

    public function show($id)
    {
        return Post::with('comments')->findOrFail($id);
    }

    public function store(Request $request)
{
    // Validate the incoming data
    $request->validate([
        'title' => 'required|string|max:255',
        'content' => 'required|string',
    ]);

    // Create the post and assign it to the variable
    $post = Post::create([
        'title' => $request->title,
        'content' => $request->content,
        'user_id' => auth()->id(),
    ]);

   
    return response()->json($post, 201);
}

}
