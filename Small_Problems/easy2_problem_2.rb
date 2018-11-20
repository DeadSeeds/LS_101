def square_meters
  puts "Enter the length of the room in meters:"
  length = gets.chomp.to_f

  puts "Enter the width of the room in meters:"
  width = gets.chomp.to_f

  square_feet = (length * width) * 10.7639
  square_meters = (length * width)
  puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)."
end
