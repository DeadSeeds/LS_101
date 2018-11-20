def crunch(words)
  counter = 0
  new_arr = words.chars
  final_arr = []
  loop do
    final_arr << new_arr[counter] unless new_arr[counter + 1] == final_arr[counter]
    counter += 1
    break if counter == words.length
  end
  final_arr.join
end

crunch('ddaaiillyy ddoouubbllee')
