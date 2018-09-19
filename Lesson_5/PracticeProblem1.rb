arr = ['10', '11', '9', '7', '8']

arr2 = arr.map do |num|
  num.to_i
  end

arr2.sort.reverse


# LS's solution:
#
# arr.sort do |a,b|
#   b.to_i <=> a.to_i
# end
