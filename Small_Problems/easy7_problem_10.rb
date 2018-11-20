def multiply_list(arr1, arr2)
  counter = 0
  new_arr = []
  loop do
    new_arr << arr1[counter] * arr2[counter]
    counter += 1
    break if counter == arr1.size
  end
  new_arr
end

multiply_list([1, 2, 3], [4, 5, 8])


# LS's solution
# def multiply_list(list_1, list_2)
#   products = []
#   list_1.each_with_index do |item, indexhy|
#     products << item * list_2[index]
#   end
#   products
# end
