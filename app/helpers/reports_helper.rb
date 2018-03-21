 module ReportsHelper
  def find_profit(product)
    if product.product_price && product.product_cost
      number_to_currency(product.product_price - product.product_cost, unit: 'Rs. ')
    else
      return 0
    end
  end

  def find_loss(product)
    if product.product_price && product.product_cost
      total_sales = product.sales.pluck(:unit).compact.sum
      number_to_currency((total_sales * product.product_price) - (total_sales * product.product_cost),unit: 'Rs. ')
    else
      return 0
    end
  end

  def Grand_total(sale)
   number_to_currency((sale.product.product_price * sale.unit) ,unit: 'Rs. ') 
 end

 def number_to_rupees(number)
   number_to_currency(number, unit: 'Rs. ') 
 end
end