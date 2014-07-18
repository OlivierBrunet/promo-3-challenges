require 'csv'

class Cookbook
  attr_reader :cookbook, :file

  def initialize
    @cookbook = []
    @file = "/home/olivierbrunet/code/OlivierBrunet/promo-3-challenges/02-OOP/03-Cookbook/01-Cookbook-v0/lib/recipes.csv"
    load_csv
  end

  def load_csv
    CSV.foreach(@file) do |row|
    @cookbook << row[0]
    end
  end

  def add(recipe)
    @cookbook << recipe
    update
  end

  def remove(index)
    @cookbook.delete_at(index)
    update
  end

  def update
    CSV.open(@file, "w") do |csv|
      @cookbook.each do |recipe|
      csv << [recipe]
      end
    end
  end

end


