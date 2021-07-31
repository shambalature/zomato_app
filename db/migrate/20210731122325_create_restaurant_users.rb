class CreateRestaurantUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurant_users do |t|
      t.references :user
      t.references :restaurant

      t.timestamps
    end
  end
end
