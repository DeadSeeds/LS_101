def buy_fruit(arr)
  new_arr = []
  arr.each do |sub_arr|
    sub_arr[1].times do |num|
      new_arr << sub_arr[0]
    end
  end
  new_arr
end


# LS's solution:
#
# def buy_fruit(list)
#   list.map { |fruit, quantity| [fruit] * quantity }.flatten
# end
