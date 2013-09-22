class AddUserstuffToUsers < ActiveRecord::Migration
  def change
	add_column :users, :password_digest, :string
	add_column :users, :birthday, :date
	add_column :users, :last_name, :string
	add_column  :users, :first_name, :string
  end
end
