class AddAttachmentImageTresToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :image_tres
    end
  end

  def self.down
    remove_attachment :posts, :image_tres
  end
end
