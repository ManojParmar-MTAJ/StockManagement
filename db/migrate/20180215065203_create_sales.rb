class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.string :customer_id
      t.string :product_id
      t.string :payment_status
      t.string :sales_date
      t.string :unit

      t.timestamps
    end
  end
end
