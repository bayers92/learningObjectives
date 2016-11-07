class AddDefaultsToUser < ActiveRecord::Migration
  def change
  	change_column_default :users, :blocky1, 0
  	change_column_default :users, :blocky2, 0
  	change_column_default :users, :blocky3, 0
  	change_column_default :users, :blocky4, 0
  	change_column_default :users, :blocky5, 0
  end
end
