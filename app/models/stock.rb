class Stock < ApplicationRecord
  validates :supplier_name,:product_id,:unit,:status,:total,:note, presence: true
  validates :total, numericality:true
  validates :supplier_name, length: { minimum: 2 }
end
