class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.string :supplier_id
      t.string :product_id
      t.string :unit
      t.string :date
      t.string :status
      t.string :total
      t.string :note

      t.timestamps
    end
  end
end
