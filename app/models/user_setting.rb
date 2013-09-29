class UserSetting < ActiveRecord::Base
        attr_accessible :state, :country, :back_color, :u_font_style, :u_font_color, :profile_pic, :back_pic
has_attached_file :back_pic, :profile_pic
end
