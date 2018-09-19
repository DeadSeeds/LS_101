# I absolutely did not come up with the correct answer.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hash = {}
arr.each do |item|
  hash[item[0]] = item[1]
end
