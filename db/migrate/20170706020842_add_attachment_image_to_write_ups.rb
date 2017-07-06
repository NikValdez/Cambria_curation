class AddAttachmentImageToWriteUps < ActiveRecord::Migration
  def self.up
    change_table :write_ups do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :write_ups, :image
  end
end
