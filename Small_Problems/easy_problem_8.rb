def average(numbers)
  total = 0
  numbers.each do |num|
    total += num
  end
  total / numbers.size
end
