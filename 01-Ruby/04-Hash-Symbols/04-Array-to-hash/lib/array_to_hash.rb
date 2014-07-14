def array_to_hash(array)
  #TODO: implement the method :)
  my_hash = Hash.new
  array.each_with_index do |value, index|
  my_hash[index] = value
  end
  my_hash
end

puts array_to_hash(["a","b","c"])