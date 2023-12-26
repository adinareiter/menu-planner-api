class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  # has_many :menus
  # has_many :recipes, through: :menus
end
