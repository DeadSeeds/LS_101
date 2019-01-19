def twice(number)
  str_num = number.to_s
  if str_num.size.even?
    new_arr = str_num.chars.to_a
    new_num = new_arr.size / 2
    if str_num[0, new_num] == str_num[new_num, new_num]
      str_num.to_i
    else
      str_num.to_i * 2
    end
  else
    str_num.to_i * 2
  end
end
