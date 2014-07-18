require 'csv'

class Cookbook
  attr_reader :recipes, :file

  def initialize
    @recipes = []
    @file = "/home/olivierbrunet/code/OlivierBrunet/promo-3-challenges/02-OOP/03-Cookbook/01-Cookbook-v0/lib/recipes.csv"
    load_csv
  end

  def load_csv
    CSV.foreach(@file) do |row|
    @recipes << row[0]
    end
  end

  def add(recipe)
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


