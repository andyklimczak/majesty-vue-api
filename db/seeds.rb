# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

Story.delete_all
JSON.parse(open("#{Rails.root}/db/seed/stories.json").read).each_with_index do |data, index|
  story = Story.new(data)
  story.id = index + 1
  story.save!
end

Movie.delete_all
JSON.parse(open("#{Rails.root}/db/seed/movies.json").read).each_with_index do |data, index|
  movie = Movie.new(data)
  movie.id = index + 1
  movie.save!
end

PaginationStory.delete_all
JSON.parse(open("#{Rails.root}/db/seed/pagination_stories.json").read).each_with_index do |data, index|
  story = PaginationStory.new(data)
  story.upvotes = Random.rand(499)
  story.id = index + 1
  story.save!
end
