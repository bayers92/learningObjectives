class RemoveBlockyFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :blocky1, :integer
  	remove_column :users, :blocky2, :integer
  	remove_column :users, :blocky3, :integer
  	remove_column :users, :blocky4, :integer
  	remove_column :users, :blocky5, :integer
  end
end
