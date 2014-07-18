class Repo

  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add(recipe)
    @recipes << recipe
  end

  def remove(recipe)
    @recipes.delete(recipe)
  end

end
