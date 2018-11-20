puts "What is your name?"
name = gets.chomp
name_up = name.upcase.delete("!")

if name.include?("!")
  puts "HELLO #{name_up}. WHY ARE WE SCREAMING?"
else
  puts "Hello, #{name}."
end
