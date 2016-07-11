# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Category.destroy_all
Project.destroy_all

#1


#1
User.create!(name: 'John Smith', email: 'john@gmail.com', password: 'test', password_confirmation: 'test' )
#2
User.create!(name: 'Kate Jones', email: 'kate@gmail.com', password: 'test', password_confirmation: 'test' )


#1
Category.create!(
  :name => 'art'
)
#2
Category.create!(
  :name => 'crafts'
)
#3
Category.create!(
  :name => 'design'
)
#4
Category.create!(
  :name => 'fashion'
)
#5
Category.create!(
  :name => 'food'
)
#6
Category.create!(
  :name => 'games'
)
#7
Category.create!(
  :name => 'music'
)
#8
Category.create!(
  :name => 'photography'
)
#9
Category.create!(
  :name => 'technology'
)
