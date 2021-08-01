class CorrectedColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :restaurants, :desciption, :description
  end
end
