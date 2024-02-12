class Recipe < ApplicationRecord
  has_many :menus
  has_many :events, through: :menus
  # has_many :users, through: :menus
  def ingredients_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(", ")
  end
end
