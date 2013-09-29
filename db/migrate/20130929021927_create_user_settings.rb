class CreateUserSettings < ActiveRecord::Migration
  def change
    create_table :user_settings do |t|
      t.string :state
      t.string :country
      t.string :back_color
      t.string :u_font_style
      t.string :u_font_color

      t.timestamps
    end
  end
end
