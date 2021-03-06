class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.string :url, null: false
      t.string :short_path, null: false
      t.integer :clicked, null: false, default: 0

      t.timestamps
    end
    add_index :links, :url, unique: true
    add_index :links, :short_path, unique: true
  end
end
