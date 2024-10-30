class AddUserIdToSessions < ActiveRecord::Migration[6.1]
  def change
    add_column :sessions, :user_id, :integer
    add_index :sessions, :user_id  # Optional: add an index for faster lookup
  end
end
