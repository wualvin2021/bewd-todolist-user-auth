class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.references :user, null: false, foreign_key: true
      # Add other necessary columns here
      t.timestamps
    end
  end
end
