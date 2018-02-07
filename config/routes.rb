Rails.application.routes.draw do
  root to: 'homes#index'
  devise_scope :user do

    root to: "devise/sessions#new"
  end
  root to:"products#index"
  devise_scope :products do
  end
  root to:"suppliers#index"
  devise_scope :suppliers do
  end

  devise_for :users
  resources :products
  resources :suppliers
end