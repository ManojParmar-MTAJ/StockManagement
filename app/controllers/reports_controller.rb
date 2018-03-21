class ReportsController < ApplicationController
before_action :authenticate_user! 
respond_to :docx

  def customers
    @customers = Customer.all
    respond_to do |format|
       format.html
       format.pdf do
         pdf = CustomerPdf.new(@customers)
         send_data pdf.render, filename: 'reports.pdf', type: 'application/pdf',disposition:'inline'
       end
     end
  end 

  def show_customer_report
    @customer = Customer.find(params[:id])
  end
end

