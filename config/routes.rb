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
  delete "/menus/:id" => "menus#destroy"

  # events
  get "/events" => "events#index"
  get "/events/:id" => "events#show"
  post "/events" => "events#create"
  patch "/events/:id" => "events#update"

  # users
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  get "/user" => "users#current"
  post "/users" => "users#create"

  # sessions
  post "/sessions" => "sessions#create"
end
