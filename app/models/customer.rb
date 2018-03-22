class Customer < ApplicationRecord
 validates :customer_name,:email,:phone_no,:address,:city, presence: true
 validates :email, :uniqueness =>true
 validates :phone_no,:numericality =>true
 validates :customer_name, length: { minimum: 2 , maximum: 10 }

  has_many :sales, dependent: :destroy
  has_many :products, through: :sales
  has_many :sales_returns
  
  scope :search_customers, ->(search) { where("customer_name ILIKE ?", "%#{search}%") }

def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
end
