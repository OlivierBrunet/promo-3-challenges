require 'csv'

class Cookbook
  attr_reader :recipes, :file

  def initialize(file)
    @recipes = []
    @file = file
    load_csv
  end

  def load_csv
    CSV.foreach(@file) do |row|
    @recipes << row[0]
    end
  end

  def add_recipe(recipe)
    @recipes << recipe
    update
  end

  def remove(index)
    @recipes.delete_at(index)
    update
  end

  def update
    CSV.open(@file, "w") do |csv|
      @recipes.each do |recipe|
      csv << [recipe]
      end
    end
  end

  def list
  @recipes
  end
end


