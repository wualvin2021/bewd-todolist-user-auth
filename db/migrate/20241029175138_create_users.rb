class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      # Add other fields as necessary
      t.timestamps
    end
  end
end
