roman = {
I => 1,
II => 2,
III => 3,
IV => 4,
V => 5,
X => 10,
L => 50,
C => 100,
D => 500
}

def roman_to_integer(roman_string)
  #TODO: translate roman string to integer
  roman.each do |key, value|
  if roman_string == key then puts value
  end
end

# testing your program
puts roman_to_integer('IV') == 4 # => true
puts roman_to_integer('XII') == 12 # => true
puts roman_to_integer('XIX') == 19 # => true

