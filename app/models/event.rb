class Event < ApplicationRecord
  # belongs_to :menu

  has_many :menus
  has_many :recipes, through: :menus
end
