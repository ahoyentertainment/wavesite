class UserSettingsController < ApplicationController
  def new
      @title = "Edit Your Settings"
      @settings = User_setting.new
  end

  def create
      @settings = User_setting.new(settings_params)
  end

  private
  
  def settings_params
      params.require(:user_setting).permit(:state, :country, :profile_pic, :back_pic)
  end
end
