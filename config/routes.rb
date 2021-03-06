Rails.application.routes.draw do

  root to: "welcome#index"

  get "/welcome", to: "welcome#index"
  
  resources :users, except: [:new]

  resources :clients

  resources :campaigns
  
  resources :donations

  post "/sessions", to: "sessions#create"
  get "/sessions", to: "sessions#destroy"

end
