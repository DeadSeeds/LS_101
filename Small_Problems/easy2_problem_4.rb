YEAR = 2018

def retire_calc
  puts "What is your age?"
  age = gets.chomp.to_i
  puts "At what age would you like to retire?"
  retirement_age = gets.chomp.to_i

  retire_year = (retirement_age - age) + YEAR

  puts "It's #{YEAR}. You will retire in #{retire_year}."
  puts "You have only #{retirement_age - age} years of work to go!"
end

#  Could also do current_year = Time.now.year
