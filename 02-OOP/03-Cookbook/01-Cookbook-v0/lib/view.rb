require_relative "cookbook"
require_relative "controller"

def ask_user_add_recipe
  puts "Please enter a name"
  @recipe.name = gets.chomp
  puts "Please describe"
  @recipe.description = gets.chomp
  create
end

def ask_user_delete_recipe
  list
  puts "Please enter index"
  index = gets.chomp.to_s
  destroy

end