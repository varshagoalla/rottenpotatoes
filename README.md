# RottenPotatoes

RottenPotatoes is a Rails application for managing a movie collection. Users can create, view, edit, and delete movies and sort the collection by title, rating, or release date.

## Deployed application

[View RottenPotatoes on Render](https://rottenpotatoes-t6nf.onrender.com/movies)

## Requirements

- Ruby 3.3.0
- Rails 8.0.5.1
- SQLite for development and testing
- PostgreSQL for production

## Local setup

```sh
bundle install
bin/rails db:prepare
bin/rails db:seed
```

Start the application:

```sh
bin/rails server
```

Then visit [http://localhost:3000](http://localhost:3000).

The seed task is safe to run repeatedly without creating duplicate seed movies.

## Deployment

The production application is deployed on Render and uses Render PostgreSQL. Pushing changes to the GitHub `main` branch triggers a new deployment.
