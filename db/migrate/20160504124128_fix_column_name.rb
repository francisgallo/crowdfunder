class FixColumnName < ActiveRecord::Migration
  def change
    rename_column  :rewards, :product_id, :project_id
  end
end
