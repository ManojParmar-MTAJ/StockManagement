class Stock < ApplicationRecord
  validates :product_id,:unit,:total, presence: true
  validates :total, numericality:true

  belongs_to :supplier
  belongs_to :product
end
