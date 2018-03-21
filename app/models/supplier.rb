class Supplier < ApplicationRecord
   validates :supplier_name, :product_name, :company_name, :address, :city_name, :contact_no, :gst_no, presence: true
   validates :gst_no, numericality:true
  validates :supplier_name, length:{minimum:2,maximum: 20 }
  validates :product_name, length: { minimum: 2,maximum: 20 }
  validates :company_name, length: { minimum: 2,maximum: 20 }
  has_many :stocks, dependent: :destroy
  has_many :product

  scope :search_suppliers, ->(search) { where("supplier_name ILIKE ?", "%#{search}%") }

def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
end
