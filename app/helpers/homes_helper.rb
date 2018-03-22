module HomesHelper
  def sales_graph
    sales_data = (2010..2020).collect{|year| {year: year.to_s, total_sales: sales_per_year(year)}}
    sales_data = sales_data.delete_if{|k| k[:total_sales] <= 0}.to_json.html_safe
  end

  def sales_per_year(year)
    Sale.all.select{|sale| sale.sales_date.include?(year.to_s)}.sum{|sale| sale.unit * sale.product.product_price}
  end
end