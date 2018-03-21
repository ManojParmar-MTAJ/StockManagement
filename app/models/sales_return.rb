class SalesReturn < ApplicationRecord
validates :sale_id,:customer_id,:product_id,:salesreturn_date,:unit,:price, presence: true

  belongs_to :product
  belongs_to :customer
  belongs_to :sale
end
