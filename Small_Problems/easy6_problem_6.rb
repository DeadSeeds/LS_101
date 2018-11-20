def merge(arr, arr2)
  merged_arr = []
  arr.each do |num|
    merged_arr << num
  end
  arr2.each do |num|
    merged_arr << num
  end
  merged_arr.uniq!
end

# LS solution:
# def merge(array_1, array_2)
#   array_1 | array_2
# end
