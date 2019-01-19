def fizzbuzz(num1, num2)
  arr = []
  num1.upto(num2) do |num|
    arr << num
  end
  arr.map do |num|
    if (num % 5 == 0 && num % 3 == 0)
      p "FizzBuzz"
    elsif num % 5 == 0
      p "Buzz"
    elsif num % 3 == 0
      p "Fizz"
    else
      p num
    end
  end
end
