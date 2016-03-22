# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Gist.destroy_all
User.destroy_all
require 'faker'

# Creating 20 users with one gist each

20.times do
  fake_user = User.new({
    username: "#{Faker::Internet.user_name}",
    email: "#{Faker::Internet.email}",
    password: Faker::Internet.password
  })
  fake_user.save!
  fake_gist = Gist.new({
    name: "#{Faker::Lorem.characters(10)}",
    description: "#{Faker::Lorem.sentence}",
    content: "#{Faker::Lorem.characters(100)}",
    user_id: fake_user.id
    })
  fake_gist.save!
  end
