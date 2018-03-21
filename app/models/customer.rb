class Customer < ApplicationRecord
 validates :customer_name,:email,:phone_no,:address,:city, presence: true
 validates :email, :uniqueness =>true
 validates :phone_no,:numericality =>true
 validates :customer_name, length: { minimum: 2 , maximum: 10 }

  has_many :sales

end
