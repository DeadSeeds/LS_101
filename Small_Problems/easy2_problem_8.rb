puts "Please enter an integer greater than 0:"dos
number = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp.downcase

total = 0
number.times do |num|
  total += (num + 1)
end

prod = 1
number.times do |num|
  prod *= (num + 1)
end

if choice == 's'
  puts "The sum of the integers between 1 and #{number} is #{total}."
elsif choice == 'p'
  puts "The product of the integers between 1 and #{number} is #{prod}."
else
  puts "You didn't choose either 's' or 'p'.  ERROR ERROR ERROR"
end
