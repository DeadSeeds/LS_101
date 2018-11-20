NUMBERS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

def string_to_signed_integer(string)
  new_string = String.new
  if string[0] == '+'
    new_string = string.delete '+'
  elsif string[0] == '-'
    new_string = string.delete '-'
  else
    new_string = string
  end

  nums = 0
  new = new_string.chars.map do |num|
          NUMBERS[num]
        end
  new.each do |num|
    nums = 10 * nums + num
  end

  if string[0] == '-'
    nums = -nums
  else
    nums
  end
end
