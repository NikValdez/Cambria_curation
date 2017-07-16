class AddAttachmentImageToRatePodcasts < ActiveRecord::Migration
  def self.up
    change_table :rate_podcasts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :rate_podcasts, :image
  end
end
