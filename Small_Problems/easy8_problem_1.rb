def sum_of_sums(arr)
  new_arr = []
  total = 0
  arr.each do |num|
    new_arr << num
    total += new_arr.sum
  end
  total
end

# LS's solution:
#
# def sum_of_sums(numbers)
#   sum_total = 0
#   1.upto(numbers.size) do |count|
#     sum_total += numbers.slice(0, count).reduce(:+)
#   end
#   sum_total
# end
