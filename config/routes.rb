Rails.application.routes.draw do

  root to: 'homes#index'
  devise_scope :user do
    root to: 'devise/sessions#new'
  end
  devise_for :users

  resources :products
  resources :suppliers
  resources :customers
  resources :stocks
  resources :sales
  resources :sales_returns

  get 'reports/customers' => 'reports#customers'
  get 'reports/sales' => 'reports#sales'
  get 'reports/products' => 'reports#products'
  get 'reports/stocks' => 'reports#stocks'
  get 'reports/show_product_report/:id' => 'reports#show_product_report', as: 'show_product_report'
  get 'reports/show_sale_report/:id' => 'reports#show_sale_report', as: 'show_sale_report'
  get 'reports/show_stock_report/:id' => 'reports#show_stock_report', as: 'show_stock_report'
end
