class ReportsController < ApplicationController

  def sales
    @sales = Sale.all
  end

  def products
    @products = Product.all
  end

  def stocks
    @stocks = Stock.all
  end

end
