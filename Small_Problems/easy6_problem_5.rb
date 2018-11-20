def reverse(arr)
  new_arr = []
  counter = 1
  loop do
    new_arr[counter - 1] = arr[-counter]
    counter += 1
    break if counter == (arr.size + 1)
  end
  new_arr
end
