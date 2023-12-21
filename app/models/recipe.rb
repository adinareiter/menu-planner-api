class Recipe < ApplicationRecord
  # belongs_to :menu
  has_many :menus
  has_many :events, through: :menus
end
