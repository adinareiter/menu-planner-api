# Menu Planner API

Welcome to the Menu Planner API! This Rails backend API allows users to access and manage a database of recipes. The API is secured using JSON Web Tokens (JWT) for authentication, and passwords are hashed using the Bcrypt gem for enhanced security.

## Table of Contents
- [Features](https://github.com/adinareiter/menu-planner-api/blob/main/README.md#features)
- [Getting Started](https://github.com/adinareiter/menu-planner-api/blob/main/README.md#getting-started)
  - [Prerequisites](https://github.com/adinareiter/menu-planner-api/blob/main/README.md#prerequisites)
  - [Installation](https://github.com/adinareiter/menu-planner-api/blob/main/README.md#installation)
- [Usage](https://github.com/adinareiter/menu-planner-api/blob/main/README.md#usage)
  - [Authentication](https://github.com/adinareiter/menu-planner-api/blob/main/README.md#authentication)
  - [Endpoints](https://github.com/adinareiter/menu-planner-api/blob/main/README.md#endpoints)
- [Contributing](https://github.com/adinareiter/menu-planner-api/blob/main/README.md#contributing)

## Features
- User authentication using JWT.
- Secure password storage with Bcrypt.
- Access to a comprehensive database of recipes and events.
- Easy-to-use API endpoints for retrieving, creating, updating, and deleting recipes.

## Getting Started
### Prerequisites
Before you begin, make sure you have the following installed:
- Ruby
- Ruby on Rails
- Bundler

### Installation
1. Clone the repository:
`git clone https://github.com/adinareiter/menu-planner-api.git`
2. Navigate to the project directory:
`cd menu-planner-api`
3. Install dependencies:
`bundle install`
4. Set up the database:
```
rails db:create
rails db:migrate
rails db:seed
```
5. Start the Rails server:
`rails server`

The API should now be running locally on http://localhost:3000.

## Usage
### Authentication
To access protected endpoints, include the JWT token in the Authorization header of your HTTP requests. You can obtain a token by authenticating with the `/sessions` endpoint.

Example:

```
bash
POST /sessions
Content-Type: application/json

{
  "email": "user@example.com",
  "password": "securepassword"
}
```
The response will contain a `jwt` field, which you should include in subsequent requests.

### Endpoints
`GET /recipes`: Retrieve a list of all recipes.
`GET /recipes/:id`: Retrieve details for a specific recipe.
`POST /recipes`: Create a new recipe.
`PATCH /recipes/:id`: Update an existing recipe.
`DELETE /recipes/:id`: Delete a recipe. Refer to the API documentation for detailed information on each endpoint and their required parameters.

To access events, replace the above endpoints of `/recipes` with `/events`.

## Contributing
Contributions are welcome! If you have a change to recommend, please submit a pull request.

