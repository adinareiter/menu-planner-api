class Menu < ApplicationRecord
  # has_many :recipes
  # has_many :events

  belongs_to :event
  belongs_to :recipe
end
