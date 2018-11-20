def multisum(number)
  new_arr = (1..number).select do |num|
              num % 3 == 0 || num % 5 == 0
            end
  new_arr.sum
end
