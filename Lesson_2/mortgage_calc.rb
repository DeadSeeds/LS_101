def prompt(message)
  puts "=> #{message}"
end

loop do
  system("clear")
  
  prompt("Welcome to Interest Rate Calculator!")
  prompt("Please enter the loan amount:")
  amount = ''
  loop do
    amount = gets.chomp
    if amount.to_i <= 0 || amount.empty?
      prompt("If the loan amount is zero, it's not a loan.  Please enter a positive number.")
    else
      break
    end
  end

  prompt("Please enter the APR as a whole value (5 for 5%, 3.4 for 3.4%, etc.):")
  apr = ''
  loop do
    apr = gets.chomp
    if apr.to_f <= 0 || apr.empty?
      prompt("Invalid input.  Please enter a positive number.")
    else
      break
    end
  end

  prompt("Please enter the loan duration in years:")
  years = ''
  loop do
    years = gets.chomp
    if years.to_i <= 0 || years.empty?
      prompt("Invalid input.  Please enter a positive number.")
    else
      break
    end
  end

  monthly_rate = ((apr.to_f / 100) / 12)

  total_duration = (years.to_i * 12)

  payment = amount.to_i * (monthly_rate / (1 - (1 + monthly_rate)**(-total_duration)))
  prompt("A loan amount of $#{amount} with an APR of #{apr}% for #{years} year(s) will require")
  prompt("a monthly payment of $#{payment.round(2)}.")

  prompt("Would you like to do another calculation?")
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end
prompt("Thanks for using the Interest Rate Calculator.  See ya!")
