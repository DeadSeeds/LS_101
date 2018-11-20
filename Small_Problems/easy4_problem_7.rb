NUMBERS = {'0'=> 0, '1' => 1, '2'=> 2, '3'=> 3, '4'=> 4, '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9}

def string_to_integer(string)
  nums = 0
  new = string.chars.map do |num|
          NUMBERS[num]
        end
  new.each do |num|
    nums = 10 * nums + num
  end
  nums
end


# Didn't quite get this one (but came close).  The tricky part is getting in the numbers into a value.
# So, muliply the previous numbers by 10 and then add the new number.  This puts
# it in the proper place (thousands, hundred, tens, etc.)
