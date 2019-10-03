Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "books",     to: "books#index"
  get "authors",   to: "authors#index"

  post "/", to: "books#create", as: "/"
  
end
