require_relative "cookbook"
require_relative "view"
require_relative "recipe"

class Controller

  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    @view.list(@cookbook.recipes)
  end

  def create
    name = @view.add_recipe_name
    description = @view.add_recipe_description
    new_recipe = Recipe.new(name,description)
    @cookbook.add_recipe(new_recipe)
  end

  def destroy
    id_recipe = @view.destroy_recipe
    @cookbook.remove_recipe(id_recipe)
  end


end