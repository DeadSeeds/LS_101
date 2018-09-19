def multiply(numbers, factor)
  return_array = []
  counter = 0

  loop do
    break if counter == numbers.length
    return_array << numbers[counter] * factor
    counter += 1
  end
  return_array
end


my_numbers = [1, 4, 3, 7, 2, 6]
multiply(my_numbers, 3)
