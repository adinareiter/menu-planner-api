class Event < ApplicationRecord
  has_many :menus
  # has_many :recipes, through: :menus
  has_many :recipes, -> { order("menus.created_at DESC") }, through: :menus
  # has_many :users, through: :menus
end
