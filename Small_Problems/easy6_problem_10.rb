def triangle(number)
  counter = 1
  number.times do |stars|
    p (' ' * (number - counter)) + ('*' * counter)
    counter += 1
  end
end
