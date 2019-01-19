def sequence(num, num2)
  arr = Array.new
  num.times do |number|
    arr << num2 * (number + 1)
  end
  arr
end
