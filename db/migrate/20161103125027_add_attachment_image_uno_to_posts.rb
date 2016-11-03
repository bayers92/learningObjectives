class AddAttachmentImageUnoToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :image_uno
    end
  end

  def self.down
    remove_attachment :posts, :image_uno
  end
end
