class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :user_id
      t.integer :client_id
      t.string :description
      t.text :photo, limit: 6.megabytes - 1
      t.float :price

      t.timestamps
    end
    add_index :products, [:client_id, :user_id, :price]
  end
end
