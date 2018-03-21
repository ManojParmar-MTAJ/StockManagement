class ReportsController < ApplicationController

  def sales
    @sales = Sale.all
  end

  def products
    @products = Product.all
  end

  def customers
    @customers = Customer.all 
  end

  def show_customer_report
    @customer = Customer.find(params[:id])
  end

  def stocks
    @stocks = Stock.all
  end

  def show_product_report
    @product = Product.find(params[:id])
  end

  def show_sale_report
    @sale = Sale.find(params[:id])
  end

  def show_stock_report
    @stock = Stock.find(params[:id])
  end
end


