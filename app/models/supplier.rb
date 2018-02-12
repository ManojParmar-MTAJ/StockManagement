class Supplier < ApplicationRecord
   validates :supplier_name, :product_name, :company_name, :address, :city_name, :contact_no, :gst_no, presence: true
   validates :gst_no, numericality:true
  validates :supplier_name, length:{minimum:2,maximum: 20 }
  validates :product_name, length: { minimum: 2,maximum: 20 }
  validates :company_name, length: { minimum: 2,maximum: 20 }
end
