class AddAttachmentToPicture < ActiveRecord::Migration
  def change
    add_attachment :pictures, :posts, :image
  end
end
