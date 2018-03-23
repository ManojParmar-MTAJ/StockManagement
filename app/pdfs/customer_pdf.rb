class CustomerPdf < Prawn::Document

  def initialize(customer)
    super()
    @customer = customer
    customer_details
    customer_sales
  end

  def customer_details
    text "Customer Details:"
    move_down 10
    table customer_data do
      row(0).font_style = :bold
      columns(0).aling = :right
      self.row_colors = ["DDDDDD","FFFFFF"]
      self.header = true
    end
  end

  def customer_sales
    customer_name = @customer.customer_name.titleize
    move_down 20
    text "Sales Data for #{customer_name}"
    move_down 10
    table customer_sales_data do
      row(0).font_style = :bold
      columns(0).aling = :right
      self.row_colors = ["DDDDDD","FFFFFF"]
      self.header = true
    end
    move_down 10
    text "Total Sales to #{customer_name}: #{ApplicationController.helpers.number_to_rupees(total_sales)}"
  end

  def customer_data 
   [["Customer Name", "Phone No", "Address", "City"]] +
   [[@customer.customer_name.titleize, @customer.phone_no, @customer.address,@customer.city]]
  end

  def customer_sales_data
    [["Sales Date","Product Name", "Unit", "Product Price", "Total"]] +
    @customer.sales.map do |sale|  
      [sale.sales_date, sale.product.product_name, sale.unit, ApplicationController.helpers.number_to_rupees(sale.product.product_price), ApplicationController.helpers.number_to_rupees(sale.product.product_price * sale.unit)]
    end
  end

  def total_sales
    @customer.sales.inject(0){|sum,sale| sum+=(sale.product.product_price * sale.unit)}
  end
end
