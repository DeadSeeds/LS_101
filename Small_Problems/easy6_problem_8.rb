def find_dup(arr)
  new_arr = arr.uniq
  counter = 0
  loop do
    return arr[counter] unless new_arr[counter] == arr[counter]
    counter += 1
  end
end

# LS solution:
# def find_dup(array)
#   array.find { |element| array.count(element) == 2 }
# end
