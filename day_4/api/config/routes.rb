Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    get "/books", to: "books#index"

    get "/books/show/:id", to: "books#show"
  
    post "/books/create/", to: "books#create"

    patch "/books/update/:id", to: "books#update"

    delete "/books/destroy/:id", to: "books#destroy"


end
