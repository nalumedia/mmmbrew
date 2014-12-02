class AddAttachmentImageToBrewlinks < ActiveRecord::Migration
  def self.up
    change_table :brewlinks do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :brewlinks, :image
  end
end
