class OrangeTree
  # TODO: Implement all the specs defined in the README.md :
  def initialize
    @height = 0
    @fruits = 0
    @age = 0
  end

  def one_year_passes!
    @age = @age + 1
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
  end


  def pick_a_fruit!(number)
  ##méthode pour pick (fruit_count - number)
  end

  def fruit_count
  ##méthode pour compter les fruits

  end

end

 orange_tree = OrangeTree.new


#- You should be able to measure the tree
#- Each year, the tree should age (it becomes older and taller, and eventually dies).
#- A tree grows 1 meter per year until 10 years old. Then it stops.
#- Before 50 years old, the proabability of dying as a year pass is zero.
#- After 50 years old, the probability of dying increases
#- No tree can live more than 100 years
#- A tree will produce 100 fruits a year once it is 5 years old
#- A tree will produce 200 fruits a year between 10 and 15 years old
#- A tree will not produce any fruits after that
#- You should be able to pick an fruit from the tree
#- You should be able to count how many fruits on the tree there are left
#- Every year, fruits which were not picked just fall off