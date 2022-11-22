Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "about", to: "about#index" 

  get "password", to: "passowrd#edit"
  patch "password", to: "passowrd#update"

  get "signup", to: "registration#new"
  post "signup", to: "registration#create"

  get "signin", to: "sessions#new"
  post "signin", to: "sessions#create"

  
  delete "logout", to: "sessions#destroy"

  get "password/reset/", to: "password_resets#new"
  post "password/reset/", to: "password_resets#create"
  
  root to: "main#index"
end
