class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :client_id
      t.integer :rate
      t.string :comments

      t.timestamps
    end
  end
end
