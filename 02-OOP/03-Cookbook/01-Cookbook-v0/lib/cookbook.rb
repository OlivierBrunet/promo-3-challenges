require 'csv'

class Cookbook
  attr_reader :recipes, :file

  def initialize(csv_file)
    @recipes = []
    @csv_file = csv_file
    load_csv
  end

  def load_csv
    CSV.foreach(@csv_file) do |row|
      @recipes << { :name => row[0], :description => row[1] }
    end
  end

  def add_recipe(recipe)
    @recipes << recipe
    update
  end

  def remove_recipe(index)
    @recipes.delete_at(index)
    update
  end

  def update
    CSV.open(@csv_file, "w") do |csv|
      @recipes.each do |recipe|
        csv << [recipe]
      end
    end
  end
end


