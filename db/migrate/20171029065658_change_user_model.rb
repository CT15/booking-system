class ChangeUserModel < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :hashed_password, :string
    remove_column :users, :password
  end
end
