class CreateRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :records do |t|
      t.integer :amount
      t.date :period
      t.string :details

      t.timestamps
    end
  end
end
