Rails.application.routes.draw do
  root to: "welcome#index"

  get "/welcome", to: "welcome#index"
  
  resources :users

  resources :clients

  resources :campaign
  
  resources :donations

  post "/sessions", to: "sessions#create"
  get "/sessions", to: "sessions#destroy"
end
