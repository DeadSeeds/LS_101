puts "Please write a word or multiple words:"
words = gets.chomp.to_s

number = words.split.join.chars.count

puts "There are #{number} characters in '#{words}'"
