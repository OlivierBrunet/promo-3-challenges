require_relative "cookbook"

class Controller
  def initialize(file)
    @cookbook = Cookbook.new(file)
  end

  def display_recipe
    @recipes
  end

  def delete_recipe
    @cookbook.remove
  end

end

display_recipe
