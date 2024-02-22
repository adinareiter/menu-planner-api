json.id event.id
json.title event.title
json.image event.image
json.recipes event.recipes do |recipe|
  json.id recipe.id
  json.title recipe.title
  json.ingredients recipe.ingredients
  json.ingredients_list recipe.ingredients_list
  json.directions recipe.directions
  json.directions_list recipe.directions_list
  json.time recipe.time
  json.image recipe.image
  json.menus recipe.menus, partial: "menus/menu", as: :menu
  json.created_at recipe.created_at
  json.updated_at recipe.updated_at
end
json.created_at event.created_at
json.updated_at event.updated_at
