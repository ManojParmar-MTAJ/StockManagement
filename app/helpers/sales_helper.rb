module SalesHelper
  def total_sale_amount
    sale_amount = @sale.product.product_price * @sale.unit
  end

  def total_cgst
    (total_sale_amount * @sale.product.cgst)/100
  end

  def total_sgst
    (total_sale_amount * @sale.product.sgst)/100
  end

  def total_bill
    total_sale_amount + (total_cgst + total_sgst)
  end
end