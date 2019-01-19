def diamond(number)
  arr = counter(number)
  arr.each do |num|
    puts ('*' * num).center(number)
  end
end

def counter(num1)
  arr = []
  1.upto(num1) do |num|
    if num.odd?
      arr << num
    end
  end
  arr += arr.reverse[1..-1]
end
