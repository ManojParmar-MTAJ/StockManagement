class ReportsController < ApplicationController

  def customers
    @customers = Customer.all 
  end

  def show_customer_report
    @customer = Customer.find(params[:id])
  end

end
