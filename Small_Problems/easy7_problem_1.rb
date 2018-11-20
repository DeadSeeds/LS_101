def interleave(arr, arr2)
  counter = 0
  final_arr = []
  loop do
    final_arr << arr[counter]
    final_arr << arr2[counter]
    counter += 1
    break if counter == arr.length
  end
  final_arr
end
