class AddBlockyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :blocky, :integer, default: 1
  end
end
