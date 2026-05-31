Rails.application.routes.draw do
  root "passwords#index"
  get "up" => "rails/health#show", as: :rails_health_check

  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  get "/welcome", to: "sessions#welcome"

  resources :passwords
  resources :users, only: [ :edit, :update, :destroy ]
end
