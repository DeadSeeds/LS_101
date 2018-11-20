def running_total(numbers)
  total = 0
  arr =  Array.new
  numbers.each do |num|
    total += num
    arr << total
  end
  arr
end

# Could have used .map as well, but didn't.
