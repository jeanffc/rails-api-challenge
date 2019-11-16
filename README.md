# Coding Challenge “Passionate Navigation”

A Ruby on Rails API for coding challenge

## Setup

1. Clone the repository

   `$ git clone https://github.com/jeanffc/rails-api-challenge`

2. Install dependencies

   `$ bundle install`

3. Run migrations

   `$ rake db:migrate`

4. Run seeds

   `$ rake db:seed`

5. In the folder you cloned the repository, type:

   `$ rails s`

## Using

1. List routes

   `$ rails routes`

Route '/api/v1/<model_name>' gives access to a CRUD in model, for instance:

For Verticals:

- GET /api/v1/verticals
- POST /api/v1/verticals
- GET /api/v1/verticals/:id
- PATCH /api/v1/verticals/:id
- PUT /api/v1/verticals/:id
- DELETE /api/v1/verticals/:id

  JSON Object:
  {
  "name": "Health & Fitness"
  }

For Categories:

- GET /api/v1/categories
- POST /api/v1/categories
- GET /api/v1/categories/:id
- PATCH /api/v1/categories/:id
- PUT /api/v1/categories/:id
- DELETE /api/v1/categories/:id

  JSON Object:
  {
  "name": "Booty & Abs",
  "vertical_id": 1,
  "state_id": 1
  }

For Courses:

- GET /api/v1/courses
- POST /api/v1/courses
- GET /api/v1/courses/:id
- PATCH /api/v1/courses/:id
- PUT /api/v1/courses/:id
- DELETE /api/v1/courses/:id

  JSON Object:
  {
  "name": "Loose the Gutt, keep the Butt",
  "author": "Anowa",
  "category_id": 1,
  "state_id": 1,
  }

## Questions

_How does your solution scale?_

I worked with some good apis development practices:

- Naming Conventions
- API Versioning, to provide new API updates and improvements without breaking old API versions
- Rate Limiting, to prevent abuse of the API, by a middleware for blocking and throttling the API
- And I also worked with abstraction, especially in validations, so it is possible to reuse the code in other modules and tests.

_What would you improve next?_

I would like to add some ideas to improve the application:

- Swagger Documentation
- Tests by RSpec
- Authentication by JWT
