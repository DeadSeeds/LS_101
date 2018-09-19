arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.map do |item|
  item.select do |key, value|
    value.all? do |num|
      num.even?
    end
  end
end

# => [{}, {:b=>[2, 4, 6], :d=>[4]}, {:e=>[8], :f=>[6, 10]}]

# Wasn't paying attention; all of the integers in the hash have to be even.
# Correct solution:

arr.select do |item|
  item.all? do |key, value|
    value.all? do |num|
      num.even?
    end
  end
end
