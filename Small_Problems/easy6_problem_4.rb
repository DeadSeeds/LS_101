def reverse!(arr)
  counter = 1
  loop do
    temp_back = arr[-counter]
    temp_front = arr[counter - 1]
    arr[counter - 1] = temp_back
    arr[-counter] = temp_front
    counter += 1
    break if counter == (arr.size - 1)
  end
  arr
end
