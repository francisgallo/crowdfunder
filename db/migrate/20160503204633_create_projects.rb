class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.integer :goal
      t.datetime :start_date
      t.datetime :end_date
      t.string :location
      t.integer :user_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
