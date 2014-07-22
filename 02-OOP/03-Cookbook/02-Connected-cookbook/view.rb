require 'csv'
require_relative "cookbook"
require_relative "controller"
require_relative "router"


class View

  def list(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index} - #{recipe.name} #{recipe.description}"
    end
  end

  def add_recipe_name
    puts "What is the name of your new recipe :"
    return gets.chomp
  end

  def add_recipe_description
    puts "What is the description of your new recipe :"
    return gets.chomp
  end

  def destroy_recipe
    puts "Which recipe would you like to remove :"
    return gets.chomp.to_i
  end

end