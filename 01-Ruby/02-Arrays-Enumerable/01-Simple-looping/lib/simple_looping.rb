def sum_with_while(min,max)
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a while..end structure
  sum = 0
  count = min

  while count <= max
    sum += count
    count += 1
  end

  return sum
end


def sum_with_for(min,max)
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a for..end structure

  count = min
  sum = 0

  for count in (min..max)
    sum += count
  end
  return sum
end


def sum_recursive(min,max)
  #TODO (optional): return the sum of the integers between min and max
  #CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself
  raise ArgumentError if min > max
  return min if min == max
  min + sum_recursive(min + 1, max)
end

