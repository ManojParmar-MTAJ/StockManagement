class Stock < ApplicationRecord
  validates :product_id,:unit,:total, presence: true
  validates :total, numericality:true

  stock = Stock.new
 stock.valid?
 stock.errors.details[:name] # => [{error: :blank}]

  belongs_to :supplier
  belongs_to :product
end
