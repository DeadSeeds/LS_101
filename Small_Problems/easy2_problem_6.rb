arr = (1..99).to_a

new_arr = arr.select do |num|
            num.odd?
          end
puts new_arr
