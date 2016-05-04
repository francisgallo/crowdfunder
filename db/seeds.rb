# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(name: 'John Smith', email: 'john@gmail.com', password: 'Blue123', password_confirmation: 'Blue123')
User.create(name: 'Kate Jones', email: 'kate@gmail.com', password: 'Blue123', password_confirmation: 'Blue123')
