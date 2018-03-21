class Sale < ApplicationRecord
  validates :customer, :product, :payment_status, :sales_date, :unit, presence: true
  validates :product_id, length: {maximum:04 }

  belongs_to :customer
  belongs_to :product



  scope :search_sales, ->(search) { where("customer_id ILIKE ?", "%#{search}%") }

  def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
  end
end
