class AddMarkerToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :marker, :string, default: "unspecified"
  end
end
