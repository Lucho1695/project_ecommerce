class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.integer :user_id
      t.integer :pay_method_id
      t.string :address
      t.string :phone

      t.timestamps
    end
    add_index :clients, [:user_id, :pay_method_id]
  end
end
