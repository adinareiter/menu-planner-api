class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.string :recipe_id
      t.string :event_id

      t.timestamps
    end
  end
end
