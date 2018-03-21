class SalesReturn < ApplicationRecord
validates :sale_id,:customer_id,:product_id,:salesreturn_date,:unit,:price, presence: true

  belongs_to :product
  belongs_to :customer
  belongs_to :sale

    scope :search_sales, ->(search) { joins(:customer).where('customers.customer_name ilike :name', name: "%#{search}%") }

  def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
  end


end
