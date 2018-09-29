WINNING_HAND = 21
COMPUTER_STANDS = 16
SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def prompt(message)
  puts "=> #{message}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def deal_cards(deck)
  deck.shift(2)
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    sum = if value == "A"
            sum += 11
          elsif value.to_i == 0 # J, Q, K
            sum += 10
          else
            sum += value.to_i
          end
  end
  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end

def busted?(score)
  score > WINNING_HAND
end

def detect_winner(player_score, computer_score)
  if player_score.to_i <= WINNING_HAND && player_score.to_i > computer_score.to_i
    prompt "You won!"
    'P'
  elsif computer_score.to_i > WINNING_HAND && player_score.to_i < WINNING_HAND
    prompt "You won!"
    'P'
  elsif computer_score.to_i == player_score.to_i || (computer_score.to_i >
        WINNING_HAND && player_score.to_i > WINNING_HAND)
    prompt "It's a draw!"
    'D'
  elsif player_score == WINNING_HAND
    prompt "You won!"
    'P'
  else
    prompt "Computer won.  Better luck next time!"
    'C'
  end
end

def player_turn(deck, player_cards, player_score)
  loop do
    prompt "Hit or Stay?"
    answer = gets.chomp.downcase
    if answer == 'stay' || answer == 's' || busted?(player_score)
      display_player_stats(player_cards, player_score)
      player_score = total(player_cards)
      break
    elsif answer == 'hit' || answer == 'h'
      player_cards << deck.shift
      player_score = total(player_cards)
      display_player_stats(player_cards, player_score)
      break if busted?(player_score)
    else
      prompt "Sorry, you must enter 'hit' or 'stay'."
    end
  end
  player_score = total(player_cards)
end

def computer_turn(deck, computer_cards, computer_score)
  loop do
    prompt "Computer's cards are:"
    card_suit_name(computer_cards)
    computer_score = total(computer_cards)
    if computer_score < COMPUTER_STANDS
      computer_cards << deck.shift
      computer_score = total(computer_cards)
    else
      break
    end
  end
  total(computer_cards)
end

def card_suit_name(cards)
  cards.each do |card|
    suit = card[0]
    number = card[1]
    case suit
    when 'D'
      suit = 'Diamonds'
    when 'C'
      suit = 'Clubs'
    when 'H'
      suit = 'Hearts'
    when 'S'
      suit = 'Spades'
    end
    prompt "#{number} of #{suit}"
  end
end

def display_player_stats(player_cards, player_score)
  prompt "Your cards are:"
  card_suit_name(player_cards)
  prompt "Your total is #{player_score}"
  puts ""
end

def display_computer_stats(computer_cards, computer_score, computer_showing_card)
  if computer_cards.size > 2
    prompt "Computer's cards are:"
    card_suit_name(computer_cards)
  else
    prompt "Computer's showing card is:"
    card_suit_name(computer_showing_card)
  end
  puts ""
end

def clear_screen
  system('clear') || system('cls')
end

def final_score_banner(player_final_score, computer_final_score)
  puts "------------------------------------------------------"
  puts "Your final score is #{player_final_score}.  Computer's final score is #{computer_final_score}."
  puts "------------------------------------------------------"
end

def yes_or_no?
  answer = ''
  loop do
  response = gets.chomp
    if response == 'y' || response == 'yes'
      answer = 'y'
      break
    elsif response == 'n' || response == 'no'
      answer = 'n'
      break
    else
      prompt "Sorry, you must enter y or n.  Please try again."
    end
  end
  answer == 'y'
end

def update_score(winner, score)
  if winner.start_with?('P')
    score[:player_wins] += 1
  elsif winner.start_with?('C')
    score[:computer_wins] += 1
  else
    score[:draws] += 1
  end
end

loop do
  clear_screen
  prompt "Welcome to Twenty One!"
  prompt "Ready to begin? (y or n)"
  break unless yes_or_no?

  score = {
  player_wins: 0,
  computer_wins: 0,
  draws: 0
  }

  loop do
    clear_screen
    puts "Player wins: #{score[:player_wins]}  Computer wins: #{score[:computer_wins]}  Draws: #{score[:draws]}"
    deck = initialize_deck
    player_cards = deal_cards(deck)
    player_score = total(player_cards)
    computer_cards = deal_cards(deck)
    computer_showing_card = [computer_cards[0]]
    computer_score = total(computer_cards)

    display_player_stats(player_cards, player_score)
    display_computer_stats(computer_cards, computer_score, computer_showing_card)
    player_final_score = player_turn(deck, player_cards, player_score)

    computer_final_score = computer_turn(deck, computer_cards, computer_score)
    final_score_banner(player_final_score, computer_final_score)
    winner = detect_winner(player_final_score, computer_final_score)
    update_score(winner, score)

    prompt "Would you like to play again? (y or n)"
    break unless yes_or_no?
  end
  break
end

prompt "Thanks for playing Twenty One!"
