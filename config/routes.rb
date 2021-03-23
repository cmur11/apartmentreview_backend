Rails.application.routes.draw do
  resources :reviews
  resources :applied_listings
  resources :saved_listings
  resources :listings
  get "/users", to: "users#index"
  post "/login", to: "users#login"
  post "/signup", to: "users#signup"
  get "/me", to: "users#show"
  # patch "/me", to: "users#update"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
