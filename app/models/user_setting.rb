class UserSetting < ActiveRecord::Base
    belongs_to :users
    has_attached_file :back_pic, :profile_pic

    validates :user_id, presence: true
end
