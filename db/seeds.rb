# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



create_table "projects", force: :cascade do |t|
  t.string   "title"
  t.string   "description"
  t.integer  "goal"
  t.datetime "start_date"
  t.datetime "end_date"
  t.string   "location"
  t.integer  "user_id"
  t.integer  "category_id"
  t.datetime "created_at",  null: false
  t.datetime "updated_at",  null: false
  t.string   "image"
end



Project.create(
  title: "Corduroy",
  description: "Door-to-door laundry and dry cleaning service. Find a dry cleaner in your area and we'll take care of all the rest. Just schedule a pick-up",
  goal: 20000,
  start_date: 2016-02-06T00:00:00+00:00
  end_date: 2016-06-06T00:00:00+00:00
  location: "Toronto",
  user_id:
  category_id:
  image: "http://previews.123rf.com/images/pitris/pitris1302/pitris130200002/17816335-Illustration-of-clothes-drying-outdoor--Stock-Vector-clothes-laundry-hanging.jpg"
)
Project.create(
  title: "Sensory Dessert",
  description: "Full satisfaction without the calories. Allow our product to create the percieved satisfaction of eating a dessert through currated sense combinations designed to make you feel satisfied.",
  goal: 30000,
  start_date: 2016-03-01T00:00:00+00:00,
  end_date: 2016-07-01T00:00:00+00:00,
  location: "Toronto",
  user_id: 
  category_id:
  image: "http://previews.123rf.com/images/pitris/pitris1302/pitris130200002/17816335-Illustration-of-clothes-drying-outdoor--Stock-Vector-clothes-laundry-hanging.jpg"
)
