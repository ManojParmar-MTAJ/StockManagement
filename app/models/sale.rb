class Sale < ApplicationRecord
  validates :customer, :product, :payment_status, :sales_date, :unit, presence: true
  validates :product_id, length: {maximum:04 }

  belongs_to :customer
  belongs_to :product
  has_many  :sales_returns
end
