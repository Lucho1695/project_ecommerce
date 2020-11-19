class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.integer :seller_id
      t.float :price

      t.timestamps
    end
    add_index :orders, [:product_id, :seller_id]
  end
end
