require_relative "cookbook"

class Controller
  def initialize(cookbook)
    @recipes = Cookbook.new(cookbook)
  end

  def list
    @recipes
  end

  def create
    @recipes.add_recipe
  end

  def destroy(id)
    @recipes.remove_recipe(id)
  end

end


