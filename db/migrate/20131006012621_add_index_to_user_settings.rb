class AddIndexToUserSettings < ActiveRecord::Migration
  def change
     add_index :user_settings, :user_id
     add_index :user_settings, :created_at
  end
end
