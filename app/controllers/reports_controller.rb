class ReportsController < ApplicationController
before_action :authenticate_user! 
respond_to :docx

  def sales
    @sales = Sale.all
  end

  def products
    @products = Product.all
  end

  def customers
    @customers = Customer.all
    respond_to do |format|
       format.html
       format.pdf do
         pdf = CustomerPdf.new(Customer.find(params[:customer_id]))
         send_data pdf.render, filename: 'reports.pdf', type: 'application/pdf',disposition:'inline'
       end
     end
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


