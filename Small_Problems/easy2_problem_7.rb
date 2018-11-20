arr = (1..99).to_a

new_arr = arr.select do |num|
            num.even?
          end
puts new_arr
