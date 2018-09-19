require 'pry'

def joinor(arr, symbol = ',', last_word = 'or')
  new_arr = []
  arr.each do |item|
    # binding.pry
    if arr[item.to_i - 1] == arr.length - 1
      new_arr <<  "#{symbol}" + " #{last_word} " + "#{item}"
    else
      new_arr << "#{item}" + "#{symbol}" + " "
    end
  end
  new_arr
end

joinor([1, 2])
