class CustomerPdf < Prawn::Document

  def initialize(customers)
    super()
    @customers = Customer.order("id DESC").all
    customer_id
   end

   def customer_id
    table customer_id_all do
    row(0).font_style = :bold
    columns(0).aling = :right
    self.row_colors = ["DDDDDD","FFFFFF"]
    self.header = true
   end
 end
 

   def customer_id_all 
   [["customer_id","customer_name","phone_no","address","city"]] +
    @customers.map do |customer|  
    [customer.id,customer.customer_name,customer.phone_no,customer.address,customer.city]

   end
 end   
end
