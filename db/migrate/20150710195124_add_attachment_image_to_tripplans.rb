class AddAttachmentImageToTripplans < ActiveRecord::Migration
  def self.up
    change_table :tripplans do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :tripplans, :image
  end
end
