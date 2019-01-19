def rotate_array(arr)
  new_arr = Array.new
  new_arr << arr
  first_num = new_arr.shift
  new_arr.push(first_num)
end


# LS's solution:
#
# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end
