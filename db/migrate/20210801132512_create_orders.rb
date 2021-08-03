class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user
      t.integer :deliver_by
      t.references :restaurant
      t.integer :total_price

      t.timestamps
    end
  end
end
