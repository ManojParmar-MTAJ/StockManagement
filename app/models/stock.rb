class Stock < ApplicationRecord
  validates :product_id,:unit,:total, presence: true
  validates :total, numericality:true

  stock = Stock.new
 stock.valid?
 stock.errors.details[:name] # => [{error: :blank}]

  belongs_to :supplier
  belongs_to :product


  scope :search_stocks, ->(search) { where("supplier_id ILIKE ?", "%#{search}%") }

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
