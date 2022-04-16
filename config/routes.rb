Rails.application.routes.draw do
  resources :tenancies
  resources :tenants
  resources :properties
  root "home#index"

end
