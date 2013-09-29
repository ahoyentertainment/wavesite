class AddAttachmentProfilePicToUserSettings < ActiveRecord::Migration
  def self.up
    change_table :user_settings do |t|
      t.attachment :profile_pic
    end
  end

  def self.down
    drop_attached_file :user_settings, :profile_pic
  end
end
