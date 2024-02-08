class ChangeRecipeIdToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :menus, :recipe_id, "numeric USING CAST(recipe_id AS numeric)"
    change_column :menus, :recipe_id, :integer
    change_column :menus, :event_id, "numeric USING CAST(event_id AS numeric)"
    change_column :menus, :event_id, :integer
  end
end
