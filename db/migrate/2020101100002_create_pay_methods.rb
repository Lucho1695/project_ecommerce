class CreatePayMethods < ActiveRecord::Migration[6.0]
  def change
    create_table :pay_methods do |t|
      t.integer :card
      t.integer :card_number
      t.integer :card_type
      t.integer :csv
      t.integer :method
      t.string :name
      t.string :bank
      t.date :date_time

      t.timestamps
    end
  end
end
