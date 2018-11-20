def oddities(array)
  new_arr = []
  array.each_with_index do |obj, index|
    if index.even?
      new_arr << obj
    end
  end
  new_arr
end
