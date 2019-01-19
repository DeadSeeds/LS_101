def rotate_rightmost_digits(num1, num2)
  arr = num1.to_s.chars
  moved_num = arr.delete_at(-num2)
  arr.push(moved_num)
  arr.join.to_i
end
