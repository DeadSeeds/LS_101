NUMBERS = {1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'}

def integer_to_string(number)
  new_arr = number.digits.reverse.map do |num|
              NUMBERS[num]
            end
  new_arr.join
end
