class Restaurant

  #TODO add relevant accessors if necessary
  attr_accessor :average_rating, :name, :address, :city

  def initialize(city, name)
    #TODO: implement constructor with rele]vant instance variables
    @name = name
    @address = address
    @city = city
    @average_rating = 0
    @rating_array = []
  end

  #TODO: implement #filter_by_city and #rate methods
  def rate(user_rate)
    @rating_array << user_rate.to_f
    @average_rating = @rating_array.inject(:+) / @rating_array.size
  end

  def self.filter_by_city(restaurants, city)
  restaurants_list = []
  restaurants.each do |restaurant|
  restaurants_list << restaurant if restaurant.city == city
  end
  restaurants_list
  end

end

jules_verne = Restaurant.new("Paris", "Jules Verne")
