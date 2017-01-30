# README

This is a simple API to be used with The Majesty of Vuejs2 book to be used locally or with heroku

Contains endpoints for `/stories` and `/movies`. Does not have pagination part yet.

Local development mode uses sqlite

### Endpoints

#### Stories

GET stories

`/stories`

`https://powerful-hollows-81664.herokuapp.com/stories`

GET story

`/stories/:id`

`https://powerful-hollows-81664.herokuapp.com/stories/:id`

PUT/PATCH stories/:id

`/stories/:id`

`https://powerful-hollows-81664.herokuapp.com/stories/:id`

DELETE stories/:id

`/stories/:id`

`https://powerful-hollows-81664.herokuapp.com/stories/:id`

#### Movies

GET movies

`/movies`

`https://powerful-hollows-81664.herokuapp.com/movies`

GET story

`/movies/:id`

`https://powerful-hollows-81664.herokuapp.com/movies/:id`

PUT/PATCH movies/:id

`/movies/:id`

`https://powerful-hollows-81664.herokuapp.com/movies/:id`

DELETE movies/:id

`/movies/:id`

`https://powerful-hollows-81664.herokuapp.com/movies/:id`

### Local Setup

0. have a Rails 5 compatible ruby installed. (>2.0?) Recommend installing through `rvm` or fish shell `fry`
1. `gem install bundler`
2. git clone repo, cd in
3. `bundle install` to install dependencies
4. `rails db:migrate` to create database tables
5. `rails db:seed` to seed data into database
6. `rails server` to start server
7. check `localhost:3000/stories`. Note that this url is slightly different from the book

