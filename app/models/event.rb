class Event < ApplicationRecord
  has_many :menus
  has_many :recipes, -> { order("menus.created_at DESC") }, through: :menus
  belongs_to :user
end
