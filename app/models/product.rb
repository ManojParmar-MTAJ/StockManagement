class Product < ApplicationRecord
  has_attached_file :image, styles: { medium: '300x300>', thumb: '100x100>', icon: '24x24>' }, default_url: 'default.jpg'
  validates_attachment_content_type :image, content_type: /\Aimage+/

  validates :product_name, :product_code, :brand, :product_category, :unit, presence: true
  validates :cgst, :sgst, :product_cost, :product_price, numericality: true
  validates :product_code, length: { minimum: 4 }
  validates :product_name, length: { minimum: 2, maximum: 20 }

  has_many :sales
  has_many :customer
  has_many :stocks
  has_many :sales_returns

  scope :search_products, ->(search) { where("product_name ILIKE ?", "%#{search}%") }


def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
end
