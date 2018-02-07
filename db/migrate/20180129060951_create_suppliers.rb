class CreateSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :suppliers do |t|
      t.string :supplier_name
      t.string :product_name
      t.string :company_name
      t.string :address
      t.string :city_name
      t.string :contact_no
      t.string :gst_no


      t.timestamps
    end
  end
end
da
