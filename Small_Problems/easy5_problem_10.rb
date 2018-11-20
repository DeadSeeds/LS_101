def print_in_box(text)
  number =  text.size
  dash = "-"
  space = " "
  puts "+-" + (dash * number) + "-+"
  puts "|" + (space * (number + 2)) + "|"
  puts "| " + text + " |"
  puts "|" + (space * (number + 2)) + "|"
  puts "+-" + (dash * number) + "-+"
end
