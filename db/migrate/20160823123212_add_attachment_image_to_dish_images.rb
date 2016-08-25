class AddAttachmentImageToDishImages < ActiveRecord::Migration
  def self.up
    change_table :dish_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :dish_images, :image
  end
end
