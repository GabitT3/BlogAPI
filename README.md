Project Overview
This is a simple Blog API built with Laravel and MySQL. It allows users to create, retrieve, and comment on posts, with authentication using Laravel’s built-in system.

Table of Contents
Installation
API Documentation
Authentication
Posts
Comments
Running the Application
License
Installation
Clone the Repository:

bash
Copy code
git clone <repository-url>
Install Dependencies: Navigate to the project directory and run:

bash
Copy code
cd blog-api
composer install
Set Up .env File: Copy the .env.example file to .env:

bash
Copy code
cp .env.example .env
Set Up Database: Ensure you have a MySQL database configured. Update the .env file with your database credentials.

Example:

env
Copy code
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=blog_api
DB_USERNAME=root
DB_PASSWORD=
Generate App Key:

bash
Copy code
php artisan key:generate
Run Migrations and Seed Database: Run the migrations to set up the database tables and seed some sample data:

bash
Copy code
php artisan migrate --seed
Start the Laravel Development Server:

bash
Copy code
php artisan serve
The application will be available at http://127.0.0.1:8000.

API Documentation
Base URL
arduino
Copy code
http://127.0.0.1:8000/api
1. Authentication
Register
Endpoint: POST /register
Description: Register a new user.
Request Body:
json
Copy code
{
  "name": "John Doe",
  "email": "john@example.com",
  "password": "password123"
}
Response:
json
Copy code
{
  "token": "user_authentication_token",
  "user": {
    "id": 1,
    "name": "John Doe",
    "email": "john@example.com"
  }
}
Login
Endpoint: POST /login
Description: Log in a user and get an authentication token.
Request Body:
json
Copy code
{
  "email": "john@example.com",
  "password": "password123"
}
Response:
json
Copy code
{
  "token": "user_authentication_token",
  "user": {
    "id": 1,
    "name": "John Doe",
    "email": "john@example.com"
  }
}
2. Posts
Create Post
Endpoint: POST /posts
Headers:
Authorization: Bearer <user_token>
Request Body:
json
Copy code
{
  "title": "My First Post",
  "content": "This is the content of the post."
}
Response:
json
Copy code
{
  "id": 1,
  "title": "My First Post",
  "content": "This is the content of the post.",
  "created_at": "2024-12-01T10:00:00Z",
  "updated_at": "2024-12-01T10:00:00Z"
}
Retrieve All Posts
Endpoint: GET /posts
Response:
json
Copy code
[
  {
    "id": 1,
    "title": "My First Post",
    "content": "This is the content of the post.",
    "comments": [
      {
        "id": 1,
        "content": "Great post!",
        "created_at": "2024-12-01T10:05:00Z"
      }
    ]
  }
]
Retrieve Single Post by ID
Endpoint: GET /posts/{id}
Response:
json
Copy code
{
  "id": 1,
  "title": "My First Post",
  "content": "This is the content of the post.",
  "comments": [
    {
      "id": 1,
      "content": "Great post!",
      "created_at": "2024-12-01T10:05:00Z"
    }
  ]
}
3. Comments
Create Comment
Endpoint: POST /posts/{id}/comments
Headers:
Authorization: Bearer <user_token>
Request Body:
json
Copy code
{
  "content": "This is a comment."
}
Response:
json
Copy code
{
  "id": 1,
  "post_id": 1,
  "content": "This is a comment.",
  "created_at": "2024-12-01T10:10:00Z",
  "updated_at": "2024-12-01T10:10:00Z"
}
Retrieve Comments for a Post
Endpoint: GET /posts/{id}/comments
Response:
json
Copy code
[
  {
    "id": 1,
    "content": "Great post!",
    "created_at": "2024-12-01T10:05:00Z"
  }
]
Running the Application
Clone the repository to your local machine.

Follow the installation steps above to set up the environment and database.

Run the application using the Laravel development server:

bash
Copy code
php artisan serve
The application should be running at http://127.0.0.1:8000.

License
This project is open-source and available under the MIT License.