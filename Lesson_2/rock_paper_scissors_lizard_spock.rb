
VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end



winning_combos = {
  rock: ['scissors', 'lizard'],
  paper: ['rock', 'spock'],
  scissors: ['lizard', 'paper'],
  spock:  ['scissors', 'rock'],
  lizard: ['spock', 'paper']
}

player_score = 0
computer_score = 0
prompt("Welcome to RPSLS.  Best of five wins.")

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')} (first letters valid; type 'sp' for Spock)")
    choice = gets.chomp

    case choice
    when "r"
      choice = "rock"
    when 'p'
      choice = 'paper'
    when 's'
      choice = 'scissors'
    when 'l'
      choice = 'lizard'
    when 'sp'
      choice = 'spock'
    else
      choice.to_s
    end

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: " + choice.to_s.upcase + "; Computer chose: " + computer_choice.to_s.upcase)

  if winning_combos.fetch(choice.to_sym).include?(computer_choice)
    prompt(choice.to_s.capitalize + " beats " + computer_choice.to_s + ". You won this round! You get a point.")
    player_score += 1
  elsif winning_combos.fetch(computer_choice.to_sym).include?(choice)
    prompt(computer_choice.to_s.capitalize + " beats " + choice.to_s + ". Computer won this round. Computer gets the point.")
    computer_score += 1
  else
    prompt("It's a tie!  No points awarded.")
  end

  prompt("Current score is player " + "#{player_score}, " + "computer " + "#{computer_score}.")

  if player_score == 5
    prompt("Which means you win!!!")
    break
  elsif computer_score == 5
    prompt("Computer wins. Better luck next time.")
    break
  end

  prompt("We haven't reached best of five.  Continue? ('No' to quit)")
  answer = gets.chomp
  break if answer.downcase.start_with?("n")
  system("clear")
end

prompt("Thanks for playing! See ya!")
