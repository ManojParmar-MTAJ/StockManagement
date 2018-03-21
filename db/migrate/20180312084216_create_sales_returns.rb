class CreateSalesReturns < ActiveRecord::Migration[5.1]
  def change
    create_table :sales_returns do |t|
      t.integer :sale_id
      t.integer :customer_id
      t.integer :product_id
      t.date :salesreturn_date
      t.integer :unit
      t.integer :price

      t.timestamps
    end
  end
end
