def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order
  burgers_list = {
    "Cheese Burger" => 290,
    "Big Mac" => 300,
    "Mc Bacon" => 400,
    "Royal Cheese" => 130
  }

  sides_list = {
    "French fries" => 130,
    "Potatoes" => 130
  }

  beverages_list = {
    "Coca" => 160,
    "Sprite" => 170
  }

  return burgers_list[burger] + sides_list[side] + beverages_list[beverage]
end


def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order
end
