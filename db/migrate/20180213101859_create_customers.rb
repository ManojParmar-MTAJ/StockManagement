class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :email
      t.string :phone_no
      t.string :address
      t.string :city

      t.timestamps
    end
  end
end
