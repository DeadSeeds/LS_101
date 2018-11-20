WORDS = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  hsh = {}
  numbers.each do |num|
    hsh[num] = WORDS[num]
  end
  new_arr = hsh.sort {|a, b| a[1] <=> b[1]}
  new_arr.map {|arr| arr[0]}
end
