SUPPLIERS = [
  {supplier_name: 'Ravi', product_name: 'ABC', company_name: 'AVC', address: 'Nadiad', city_name: 'Nadiad', contact_no: '1234567890', gst_no: '1234567'},
  {supplier_name: 'Manoj', product_name: 'ABC', company_name: 'AVC', address: 'Nadiad', city_name: 'Nadiad', contact_no: '1234567890', gst_no: '1234567'},
  {supplier_name: 'Kishan', product_name: 'ABC', company_name: 'AVC', address: 'Nadiad', city_name: 'Nadiad', contact_no: '1234567890', gst_no: '1234567'},
  {supplier_name: 'Rdm', product_name: 'XYZ', company_name: 'AVC', address: 'Nadiad', city_name: 'Nadiad', contact_no: '1234567890', gst_no: '1234567'},
  {supplier_name: 'Kdm', product_name: 'XYZ', company_name: 'AVC', address: 'Nadiad', city_name: 'Nadiad', contact_no: '1234567890', gst_no: '1234567'}
]

PRODUCTS = [
  {product_name: 'ABC', product_code: 1234, brand: 'ABCXYZ', product_category: 'cat', unit: 10, cgst: 9, sgst: 9, product_cost: 12000, product_price: 11500},
  {product_name: 'CDE', product_code: 4567, brand: 'ABCXYZ', product_category: 'cat', unit: 10, cgst: 9, sgst: 9, product_cost: 12000, product_price: 11500},
  {product_name: 'EFG', product_code: 7891, brand: 'ABCXYZ', product_category: 'cat', unit: 10, cgst: 9, sgst: 9, product_cost: 12000, product_price: 11500},
  {product_name: 'GHI', product_code: 1123, brand: 'ABCXYZ', product_category: 'cat', unit: 10, cgst: 9, sgst: 9, product_cost: 12000, product_price: 11500},
  {product_name: 'JKL', product_code: 3456, brand: 'ABCXYZ', product_category: 'cat', unit: 10, cgst: 9, sgst: 9, product_cost: 12000, product_price: 11500}
]

CUSTOMERS = [
  {customer_name: 'abcd', email: 'abcd@ex.com', phone_no: '1234567890', address: 'Nadiad', city: 'Nadiad'},
  {customer_name: 'efgh', email: 'efgh@ex.com', phone_no: '1234567890', address: 'Nadiad', city: 'Nadiad'},
  {customer_name: 'ijkl', email: 'ijkl@ex.com', phone_no: '1234567890', address: 'Nadiad', city: 'Nadiad'},
  {customer_name: 'mnop', email: 'mnop@ex.com', phone_no: '1234567890', address: 'Nadiad', city: 'Nadiad'},
  {customer_name: 'qstru', email: 'qstru@ex.com', phone_no: '1234567890', address: 'Nadiad', city: 'Nadiad'}
]

SUPPLIERS.each{|supplier| Supplier.find_or_create_by!(supplier)}
PRODUCTS.each{|product| Product.find_or_create_by!(product)}
CUSTOMERS.each{|customer| Customer.find_or_create_by!(customer)}