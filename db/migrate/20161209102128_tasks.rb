class Tasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :content
      t.boolean :completed, default: false
      t.timestamps null: false
    end
  end
end
