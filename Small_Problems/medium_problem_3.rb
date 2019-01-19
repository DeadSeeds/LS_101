def max_rotation(num1)
  counter = 0
  arr = num1.to_s.chars
  loop do
    moved_num = arr.delete_at(counter)
    arr.push(moved_num)
    counter += 1
    break if counter > arr.length
  end
  arr.join.to_i
end


# LS's Solution:
#
# def max_rotation(number)
#   number_digits = number.to_s.size
#   number_digits.downto(2) do |n|
#     number = rotate_rightmost_digits(number, n)
#   end
#   number
# end
