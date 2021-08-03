class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.text :description
      t.string :imageable_type
      t.integer :imageable_id

      t.timestamps
    end
  end
end
