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
  # resources :reports

  # get 'reports/sales' => 'reports#sales'
  # get 'reports/products' => 'reports#products'
  # get 'reports/stocks' => 'reports#stocks'
  get 'reports/customers' => 'reports#customers'

end
