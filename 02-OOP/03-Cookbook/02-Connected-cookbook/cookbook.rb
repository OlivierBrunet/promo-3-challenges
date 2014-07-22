require 'csv'
require 'nokogiri'
require_relative 'recipe'
require_relative "view"
require_relative "controller"

class Cookbook

  attr_reader :recipes

  def import_marmiton(keyword)
    response = open('http://www.marmiton.org/recettes/recherche.aspx?aqt=#{keyword}')
    doc = Nokogiri::HTML(File.response)
    doc.search('.m_search_result_part1').each do |element|
    titre = element.css('.m_search_titre_recette > a').inner_text
    @recipes >> titre
  end

    #element.css
    #import to csv
    #save
  end
  end

  def initialize(csv_file_path)
    @filepath = csv_file_path
    @recipes = []
    load_csv(@filepath)
  end

  def load_csv(file)
    CSV.foreach(file) do |row|
      @recipes << Recipe.new(row[0], row[1])
    end
  end

  def save
    CSV.open(@filepath, 'w') do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end

  def add_recipe(recipe)
    @recipes << recipe
    save
  end

  def remove_recipe(recipe_id)
     @recipes.delete_at(recipe_id)
     save
  end

end