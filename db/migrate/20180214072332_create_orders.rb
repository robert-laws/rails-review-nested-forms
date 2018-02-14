class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :store, foreign_key: true
      t.references :customer, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
