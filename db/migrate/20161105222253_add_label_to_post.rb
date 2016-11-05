class AddLabelToPost < ActiveRecord::Migration
  def change
    add_column :posts, :label, :string
  end
end
