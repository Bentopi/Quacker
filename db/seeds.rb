require 'populator'
require 'faker'


User.create 20 do |user|
  user.username = Faker::Internet.user_name
  Quack.create 1..10 do |quack|
    quack.user_id = user.id
    quack.body = Faker::Hacker.say_something_smart
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
