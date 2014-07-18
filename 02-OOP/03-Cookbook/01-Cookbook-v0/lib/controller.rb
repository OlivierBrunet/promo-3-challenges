require_relative "cookbook"

class Controller
  def initialize(cookbook)
    @view = View.new
    @recipes = Cookbook.new(cookbook)
  end

  def list
    @recipes
  end

  def create(name)
    @recipes.add_recipe(name)
  end

  def destroy(id)
    @recipes.delete_at(id)
  end

end


