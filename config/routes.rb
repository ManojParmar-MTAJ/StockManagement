Rails.application.routes.draw do

  root to: 'homes#index'
  devise_scope :user do
    root to: 'devise/sessions#new'
  end
  devise_for :users
  
  resources :products
  resources :suppliers
  resources :customers
  resources :sales
end