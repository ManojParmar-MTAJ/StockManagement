class HomesController < ApplicationController
  before_action :authenticate_user!

  def index
    total_sales = Sale.all.sum{|sale| sale.unit * sale.product.product_price}
    total_sales_return = SalesReturn.all.sum{|sales_return| sales_return.sale.product.product_price}
    @stats = {users_count: Customer.count, sales_count: helpers.number_to_rupees(total_sales), sales_return_count: helpers.number_to_rupees(total_sales_return)}
  end
end