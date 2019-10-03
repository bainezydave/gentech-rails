Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    get "pokemon",  to: "pokemon#index"
    post "/",       to: "pokemon#create"
end
