<<<<<<< HEAD
=======
require_relative 'cookbook'    # You need to create this file!
require_relative 'controller'  # You need to create this file!
require_relative 'router'

CSV_FILE = File.join(File.dirname(__FILE__), 'recipes.csv')
cookbook = Cookbook.new(CSV_FILE)
controller = Controller.new(cookbook)

Router.new(controller).run
>>>>>>> 464991c50ed48ab5052705050b4077d6ee9ed6d5
