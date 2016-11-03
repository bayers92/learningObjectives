class AddAttachmentImageQuatroToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :image_quatro
    end
  end

  def self.down
    remove_attachment :posts, :image_quatro
  end
end
