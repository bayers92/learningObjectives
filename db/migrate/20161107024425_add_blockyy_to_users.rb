class AddBlockyyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :blockyy1, :boolean
    add_column :users, :blockyy2, :boolean
    add_column :users, :blockyy3, :boolean
    add_column :users, :blockyy4, :boolean
    add_column :users, :blockyy5, :boolean
  end
end
