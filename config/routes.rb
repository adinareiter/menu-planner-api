Rails.application.routes.draw do
  # recipes
  get "/recipes" => "recipes#index"
  get "/recipes/:id" => "recipes#show"
  post "/recipes" => "recipes#create"
  patch "/recipes/:id" => "recipes#update"
  delete "/recipes/:id" => "recipes#destroy"

  # menus
  get "/menus" => "menus#index"
  get "/menus/:id" => "menus#show"
  post "/menus" => "menus#create"

  # users
  post "/users" => "users#create"
end
