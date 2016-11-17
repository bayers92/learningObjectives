class AddRezToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :rez, :integer, array: true, default: []
  end
end
