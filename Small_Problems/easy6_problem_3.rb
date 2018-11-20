def fib_arr
  fib = [1]
  10000.times do |num|
    fib << (fib[num] + fib[num - 1])
  end
  fib.unshift(1)
  fib.map! do |num|
    num.to_s
  end

end

def find_fibonacci_index_by_length(number)
  fib_arr
  index_position = 0
  fib_arr.each_with_index do |num, idx|
    if number == num.size && index_position == 0
      index_position = idx
    end
  end
  index_position + 1
end


# LS Solution:
#
# def find_fibonacci_index_by_length(number_digits)
#   first = 1
#   second = 1
#   index = 2
#
#   loop do
#     index += 1
#     fibonacci = first + second
#     break if fibonacci.to_s.size >= number_digits
#
#     first = second
#     second = fibonacci
#   end
#
#   index
# end
