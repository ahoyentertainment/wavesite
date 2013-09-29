class AddAttachmentBackPicToUserSettings < ActiveRecord::Migration
  def self.up
    change_table :user_settings do |t|
      t.attachment :back_pic
    end
  end

  def self.down
    drop_attached_file :user_settings, :back_pic
  end
end
