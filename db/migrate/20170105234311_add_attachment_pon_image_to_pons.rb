class AddAttachmentPonImageToPons < ActiveRecord::Migration
  def self.up
    change_table :pons do |t|
      t.attachment :pon_image
    end
  end

  def self.down
    remove_attachment :pons, :pon_image
  end
end
