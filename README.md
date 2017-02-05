# README

This is a simple API to be used with The Majesty of Vuejs2 book to be used locally or with heroku

Contains endpoints for `/stories` and `/movies`. Does not have pagination part yet.

Local development mode uses sqlite

### Endpoints

#### Stories

GET stories

`/api/stories`

`https://powerful-hollows-81664.herokuapp.com/api/stories`

GET story

`/api/stories/:id`

`https://powerful-hollows-81664.herokuapp.com/api/stories/:id`

PUT/PATCH stories/:id

`/api/tories/:id`

`https://powerful-hollows-81664.herokuapp.com/api/stories/:id`

DELETE stories/:id

`/api/stories/:id`

`https://powerful-hollows-81664.herokuapp.com/api/stories/:id`

#### Movies

GET movies

`/api/movies`

`https://powerful-hollows-81664.herokuapp.com/api/movies`

GET story

`/api/movies/:id`

`https://powerful-hollows-81664.herokuapp.com/api/movies/:id`

PUT/PATCH movies/:id

`/api/movies/:id`

`https://powerful-hollows-81664.herokuapp.com/api/movies/:id`

DELETE movies/:id

`/api/movies/:id`

`https://powerful-hollows-81664.herokuapp.com/api/movies/:id`

#### Pagination Stories

The api is done slightly different from how the book will describe it. The book example server gives the pagination info in the json response, while this server follows the `Paginatin RFC-5988` standard where the pagination info is given in headers instead. Inspect the headers on a GET request, and you will see `Per-Page`, `Total`, and `Link`.

If you think of a better way to emulate the example server, please submit a PR.

GET pagination_stories

`/api/pagination_stories`

`https://powerful-hollows-81664.herokuapp.com/api/pagination_stories`

GET story

`/api/pagination_stories/:id`

`https://powerful-hollows-81664.herokuapp.com/api/pagination_stories/:id`

PUT/PATCH pagination_stories/:id

`/api/pagination_stories/:id`

`https://powerful-hollows-81664.herokuapp.com/api/pagination_stories/:id`

DELETE pagination_stories/:id

`/api/pagination_stories/:id`

`https://powerful-hollows-81664.herokuapp.com/api/pagination_stories/:id`

### Local Setup

0. have a Rails 5 compatible ruby installed. (>2.0?) Recommend installing through `rvm` or fish shell `fry`
1. `gem install bundler`
2. git clone repo, cd in
3. `bundle install` to install dependencies
4. `rails db:migrate` to create database tables
5. `rails db:seed` to seed data into database
6. `rails server` to start server
7. check `localhost:3000/api/stories`. Note that this url is slightly different from the book

