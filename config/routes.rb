Rails.application.routes.draw do
  root to: 'users#index'
  resources :expenses
  resources :documents
  resources :document_types
  resources :payments
  resources :payment_methods
  resources :months
  resources :years
  resources :motives
  resources :suppliers
  resources :supplier_types
  resources :units
  resources :users
  resources :zip_codes
  resources :phones
  resources :fees
  resources :roles
  resources :cities
  resources :regions
  resources :communes
  resources :addresses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
