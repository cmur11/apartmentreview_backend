Rails.application.routes.draw do
  resources :reviews
  resources :applied_listings
  resources :saved_listings
  resources :listings
  resources :users
  post "/signin", to: "users#signin"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
