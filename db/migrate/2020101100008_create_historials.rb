class CreateHistorials < ActiveRecord::Migration[6.0]
  def change
    create_table :historials do |t|
      t.integer :order_id

      t.timestamps
    end
  end
end
