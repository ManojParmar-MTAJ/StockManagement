class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_code
      t.string :image
      t.string :brand
      t.string :product_category
      t.string :unit
      t.integer :cgst
      t.integer :sgst
      t.integer :product_cost
      t.integer :product_price


      t.timestamps
    end
  end
end
