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
Project.create!(
  :title => "Corduroy",
  :description => "Door-to-door laundry and dry cleaning service. Find a dry cleaner in your area and we'll take care of all the rest. Just schedule a pick-up",
  :goal => 20000,
  :start_date => DateTime.parse("06/02/2016 00:00"),
  :end_date => DateTime.parse("06/06/2016 00:00"),
  :location => "Toronto",
  :user_id => 1,
  :category_id => 9,
  :image => "http://previews.123rf.com/images/pitris/pitris1302/pitris130200002/17816335-Illustration-of-clothes-drying-outdoor--Stock-Vector-clothes-laundry-hanging.jpg"
)
#2
Project.create!(
  :title => "Sensory Dessert",
  :description => "Full satisfaction without the calories. Allow our product to create the percieved satisfaction of eating a dessert through currated sense combinations designed to make you feel satisfied.",
  :goal => 30000,
  :start_date => DateTime.parse("03/01/2016 00:00"),
  :end_date => DateTime.parse("07/01/2016 00:00"),
  :location => "Toronto",
  :user_id => 2,
  :category_id => 9,
  :image => "https://s-media-cache-ak0.pinimg.com/736x/1a/2d/ce/1a2dce5ba34349558f00a792e0dcce99.jpg"
  )


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
