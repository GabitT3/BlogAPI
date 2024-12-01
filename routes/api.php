<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\AuthController;

// Public Routes
Route::get('/', function () {
    return response()->json(['message' => 'Welcome to the Blog API!']);
});

// Authentication Routes
Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

// Public Post and Comment Routes
Route::get('/posts', [PostController::class, 'index']); // List all posts
Route::get('/posts/{post}', [PostController::class, 'show']); // Retrieve single post
Route::get('/posts/{post}/comments', [CommentController::class, 'index']); // List comments for a post

// Authenticated Routes (Requires Sanctum Authentication)
Route::middleware('auth:sanctum')->group(function () {
    // Post Management
    Route::post('/posts', [PostController::class, 'store']); // Create a new post

    // Comment Management
    Route::post('/posts/{post}/comments', [CommentController::class, 'store']); // Add comment to a post
});
