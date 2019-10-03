Rails.application.routes.draw do
  get 'home/page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/games/page" => "games#page"
  get "/proflie/page" => "profile#page"
end
