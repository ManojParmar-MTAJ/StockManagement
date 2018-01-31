class Product < ApplicationRecord
  validates :product_name,:product_code,:brand,:product_category,:unit, presence: true
  validates :cgst,:sgst,:product_cost,:product_price, numericality:true
  validates :product_code, length: { maximum: 4}
  validates :product_name, length: { minimum: 2 }
end
