class AddAttachmentImageDosToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :image_dos
    end
  end

  def self.down
    remove_attachment :posts, :image_dos
  end
end
