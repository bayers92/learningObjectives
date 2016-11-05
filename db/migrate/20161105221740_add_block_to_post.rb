class AddBlockToPost < ActiveRecord::Migration
  def change
    add_column :posts, :block, :integer
  end
end
