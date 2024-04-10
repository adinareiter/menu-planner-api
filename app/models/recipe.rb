class Recipe < ApplicationRecord
  has_many :menus
  has_many :events, through: :menus
  belongs_to :user

  def ingredients_list
    if ingredients
      return ingredients.split(", ")
    end
    return nil
  end

  def directions_list
    if directions
      return directions.split(", ")
    end
    return nil
  end

  def formatted_time
    hours = time / 60
    minutes = time % 60
    total_time = ""
    total_time += "#{hours} hours" if hours > 1
    total_time += "#{hours} hour" if hours == 1
    total_time += " & " if hours >= 1 && minutes >= 1
    total_time += "#{minutes} minutes" if minutes > 1
    total_time += "#{minutes} minute" if minutes == 1
    return total_time
  end
end
