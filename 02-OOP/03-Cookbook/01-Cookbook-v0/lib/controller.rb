require_relative "cookbook"

class Controller
  def initialize(file)
    @recipes = Cookbook.new(file)
  end

  def display_recipe
    @recipes.list
  end

  def add(name)
    @recipes.add_recipe(name)
  end

  def delete(id)
    @recipes.remove(id)
  end

end


