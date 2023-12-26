class Recipe < ApplicationRecord
  has_many :menus
  has_many :events, through: :menus
  # has_many :users, through: :menus
end
