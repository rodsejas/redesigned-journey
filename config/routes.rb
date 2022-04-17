Rails.application.routes.draw do
  resources :users, only: [:new, :create]

  resources :tenancies
  resources :tenants
  resources :properties
  root "home#index"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"
end