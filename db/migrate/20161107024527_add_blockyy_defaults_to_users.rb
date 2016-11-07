class AddBlockyyDefaultsToUsers < ActiveRecord::Migration
  def change
  	change_column_default :users, :blockyy1, false
  	change_column_default :users, :blockyy2, false
  	change_column_default :users, :blockyy3, false
  	change_column_default :users, :blockyy4, false
  	change_column_default :users, :blockyy5, false
  end
end
