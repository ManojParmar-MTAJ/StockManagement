 module ReportsHelper
  def find_profit(product)
    number_to_currency(product.product_price - product.product_cost, unit: 'Rs. ')
  end

  def find_loss(product)
    total_sales = product.sales.pluck(:unit).compact.sum
    number_to_currency( (total_sales * product.product_price) - (total_sales * product.product_cost),unit: 'Rs. ')
  end

  def Grand_total(sale)
   number_to_currency((sale.product.product_price * sale.unit) ,unit: 'Rs. ') 
 end

 def number_to_rupees(number)
   number_to_currency(number, unit: 'Rs. ') 
 end
end