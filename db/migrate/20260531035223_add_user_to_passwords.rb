class AddUserToPasswords < ActiveRecord::Migration[8.0]
  def change
    add_reference :passwords, :user, foreign_key: true
  end
end
