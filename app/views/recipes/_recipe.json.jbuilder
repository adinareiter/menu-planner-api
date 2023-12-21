json.id recipe.id
json.title recipe.title
json.ingredients recipe.ingredients
json.directions recipe.directions
json.time recipe.time
json.image recipe.image
json.menus recipe.menus, partial: "menus/menu", as: :menu
json.created_at recipe.created_at
json.updated_at recipe.updated_at
