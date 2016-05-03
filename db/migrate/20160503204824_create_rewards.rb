class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.integer :amount
      t.text :description
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
