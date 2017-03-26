class AddAttachmentImageToPackages < ActiveRecord::Migration
  def self.up
    change_table :packages do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :packages, :image
  end
end
