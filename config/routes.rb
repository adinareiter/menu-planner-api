Rails.application.routes.draw do
  get "/recipes" => "recipes#index"
  get "/recipes/:id" => "recipes#show"
  post "/recipes" => "recipes#create"
  patch "/recipes" => "recipes#update"
  delete "/recipes" => "recipes#destroy"
end
