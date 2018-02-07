Rails.application.routes.draw do
  root to: 'products#index'
  devise_scope :user do
    root to: 'devise/sessions#new'
  end
  devise_for :users
  
  resources :products
  resources :suppliers
end