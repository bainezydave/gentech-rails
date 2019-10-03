Rails.application.routes.draw do
  get 'pages/home', as: "root"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  post "/pages/data" => "pages#data"

  post "/pages/data/:id" => "pages#data"

end
