WINNING_HAND = 21
COMPUTER_STANDS = 16

def prompt(message)
  puts "=> #{message}"
end

def initialize_suit
  deck = []
  13.times do |num|
    deck << [num + 1]
    deck[num] << ' '
  end
  deck.each do |card|
    card.reverse!
    case card[1]
    when 0..9
      card[1] = (card[1] + 1).to_s
    when 10
      card[1] = 'J'
    when 11
      card[1] = 'Q'
    when 12
      card[1] = 'K'
    when 13
      card[1] = 'A'
    end
  end
  deck
end

def initialize_deck
  hearts_deck = initialize_suit
  diamonds_deck = initialize_suit
  spades_deck = initialize_suit
  clubs_deck = initialize_suit
  final_deck = hearts_deck + diamonds_deck + spades_deck + clubs_deck

  [hearts_deck, diamonds_deck, spades_deck, clubs_deck].each do |deck|
    case deck
    when hearts_deck
      hearts_deck.each do |card|
        card[0] = 'H'
      end
    when diamonds_deck
      diamonds_deck.each do |card|
        card[0] = 'D'
      end
    when spades_deck
      spades_deck.each do |card|
        card[0] = 'S'
      end
    when clubs_deck
      clubs_deck.each do |card|
        card[0] = 'C'
      end
    end
  end
  final_deck.shuffle
end

def play_again?
  prompt "Play again? (y or n)"
  answer = gets.chomp.downcase
  if answer == 'y'
    "Ok."
  else
    prompt "See ya!"
    false
  end
end

def deal_cards(deck)
  deck.shift(2)
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
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

def who_won?(player_score, computer_score)
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
    if answer == 'stay' || busted?(player_score)
      display_player_stats(player_cards, player_score)
      player_score = total(player_cards)
      break
    elsif answer == 'hit'
      player_cards << deck.shift
      player_score = total(player_cards)
      display_player_stats(player_cards, player_score)
      break if busted?(player_score)
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

loop do
  system('clear') || system('cls')
  prompt "Welcome to Twenty One!"
  prompt "Ready to begin? (y or n)"
  answer = gets.chomp
  break if answer == 'n'
  player_wins = 0
  computer_wins = 0
  draws = 0

  loop do
    system('clear') || system('cls')
    puts "Player wins: #{player_wins}  Computer wins: #{computer_wins}  Draws: #{draws}"
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
    prompt "Computer's final score is: #{computer_final_score}"
    winner = who_won?(player_final_score, computer_final_score)

    if winner.start_with?('P')
      player_wins += 1
    elsif winner.start_with?('C')
      computer_wins += 1
    else
      draws += 1
    end

    break unless play_again?
  end
  break
end

prompt "Thanks for playing Twenty One!"
