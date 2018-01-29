class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.float :product_price
      t.float :product_qty

      t.timestamps
    end
  end
end
