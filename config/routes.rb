Rails.application.routes.draw do
  root 'suppliers#index'
  resources :suppliers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
