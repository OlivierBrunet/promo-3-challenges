require_relative "cookbook.rb"

class Controller
  def initialize
    @cookbook = Cookbook.new
  end

  def display_recipe
    @cookbook.each_with_index do |recipe, index|
    puts "#{index} - #{recipe}"
    end
  end

  def delete_recipe
    @cookbook.remove
  end

end

display_recipe
