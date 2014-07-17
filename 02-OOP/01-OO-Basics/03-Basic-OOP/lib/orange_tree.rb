class OrangeTree
  # TODO: Implement all the specs defined in the README.md :
  attr_reader :height, :fruits

  def initialize
    @height = 0
    @fruits = 0
    @age = 0
    @dead = false
  end

  def one_year_passes!
    @age += 1
    height
    fruits
  end

  def height
    if @age == 0
      @height = 0
    elsif (1..10).cover?(@age)
      @height = @age
    else
      @height = 10
    end
  end

  def dead?
    if (0..50).cover?(@age)
      false
    else @age > 100
      true
    end
  end

  def fruits
    @fruits = 0
      if @age > 5 && @age <= 10
        @fruits = 100
      elsif @age > 10 && @age <= 15
        @fruits = 200
      else
        @fruits = 0
      end
  end

  def pick_a_fruit!
    @fruits -= 1 if @fruits > 0
  end



end

