class CreateSellers < ActiveRecord::Migration[6.0]
  def change
    create_table :sellers do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :raiting
      t.integer :phone

      t.timestamps
    end
    add_index :sellers, [:user_id, :product_id]
  end
end
