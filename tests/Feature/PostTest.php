<?php
namespace Tests\Feature;

use App\Models\Post;
use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Support\Facades\Hash;
use Tests\TestCase;

class PostControllerTest extends TestCase
{
    use RefreshDatabase;

    public function test_can_create_post()
    {
        $user = User::factory()->create([
            'password' => Hash::make('password'),
        ]);

        $response = $this->actingAs($user)->postJson('/api/posts', [
            'title' => 'Test Post',
            'content' => 'This is a test post content.',
        ]);

        $response->assertStatus(201);
        $this->assertDatabaseHas('posts', ['title' => 'Test Post']);
    }

    public function test_can_retrieve_all_posts()
    {
        Post::factory()->count(3)->create();

        $response = $this->getJson('/api/posts');

        $response->assertStatus(200);
        $this->assertCount(3, $response->json());
    }

    public function test_can_retrieve_single_post()
    {
        $post = Post::factory()->create();

        $response = $this->getJson('/api/posts/' . $post->id);

        $response->assertStatus(200);
        $this->assertEquals($post->title, $response->json('title'));
    }
}