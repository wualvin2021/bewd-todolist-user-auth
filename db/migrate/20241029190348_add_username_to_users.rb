class AddUsernameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true # Add a unique index for username
  end
end
