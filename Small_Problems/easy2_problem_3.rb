def tip_calc
  puts "What is the bill?"
  amount = gets.chomp.to_f
  puts "What is the tip percentage?"
  tip = gets.chomp.to_f

  tip_amount = (amount * (tip/100)).round(2)
  total = (amount + tip_amount).round(2)

  puts "The tip is #{tip_amount}"
  puts "The total is #{total}"
end
