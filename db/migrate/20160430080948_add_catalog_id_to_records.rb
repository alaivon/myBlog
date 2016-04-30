class AddCatalogIdToRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :records, :catalog_id, :integer
    add_index :records, :catalog_id
  end
end
