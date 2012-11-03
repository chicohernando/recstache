class AddAttachmentPhotoToUserImages < ActiveRecord::Migration
  def self.up
    change_table :user_images do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :user_images, :photo
  end
end
