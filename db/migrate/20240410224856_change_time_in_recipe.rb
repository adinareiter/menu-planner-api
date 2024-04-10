class ChangeTimeInRecipe < ActiveRecord::Migration[7.0]
  def change
    change_column :recipes, :time, "numeric USING CAST(time AS numeric)"
    change_column :recipes, :time, :integer
  end
end
