def array_to_hash(array)
  #TODO: implement the method :)
  new_hash = {}
  array.each_with_index do |value, index|
  new_hash[index] = value

  end
  new_hash
end

puts array_to_hash(["a","b","c"])