class AddIdToUserSettings < ActiveRecord::Migration
  def change
    add_column :user_settings, :user_id, :integer
  end
end
