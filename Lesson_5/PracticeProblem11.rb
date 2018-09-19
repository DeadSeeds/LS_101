arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |elem|
  new_arr = []
  elem.select do |num|
    if num % 3 == 0
      new_arr << num
    end
  end
  new_arr
end

# LS's answer:
#
# arr.map do |element|
#   element.select do |num|
#     num % 3 == 0
#   end
# end
