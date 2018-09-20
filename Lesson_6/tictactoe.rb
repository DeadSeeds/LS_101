require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals
PLAYER_ONE = 'choose'
WINNING_SCORE = 5

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(arr, symbol = ', ', last_word = 'or')
  new_arr = []
  arr.each do |item|
    if item != arr.last
      new_arr << item
    else
      new_arr << "#{last_word} #{arr.last}"
    end
  end
  new_arr.join(symbol)
end

def display_board(brd)
  system('clear') || system('cls')
  puts "You are #{PLAYER_MARKER}.  Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square: #{joinor(empty_squares(brd), ', ')}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def pick_middle_or_random(brd)
  if brd[5] == INITIAL_MARKER
    5
  else
    empty_squares(brd).sample
  end
end

def computer_places_piece!(brd)
  square = nil

  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  if !square
    square = pick_middle_or_random(brd)
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER &&
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER
      return 'Player'
    elsif brd[line[0]] == COMPUTER_MARKER &&
          brd[line[1]] == COMPUTER_MARKER &&
          brd[line[2]] == COMPUTER_MARKER
      return 'Computer'
    end
  end
  nil
end

def place_piece!(brd, current_player)
  if current_player == 'Player'
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def next_player(current_player)
  if current_player == 'Player'
    'Computer'
  else
    'Player'
  end
end

def play_again?(answer)
  if answer == 'y'
    true
  else
    false
  end
end

def determine_order
  prompt "Welcome to Tic Tac Toe!"
  prompt "Who goes first? (type 'p' for you or 'c' for computer..." \
  " any other input will be a random choice)"
  person = gets.chomp.downcase

  if person == 'p'
    'Player'
  elsif person == 'c'
    'Computer'
  else
    ['Player', 'Computer'].sample
  end
end

def assign_player_one
  if PLAYER_ONE == 'choose'
    determine_order
  end
end

loop do
  player_score = 0
  computer_score = 0
  system('clear') || system('cls')
  current_player = assign_player_one

  loop do
    board = initialize_board

    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = next_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
      if detect_winner(board) == 'Player'
        player_score += 1
      elsif detect_winner(board) == 'Computer'
        computer_score += 1
      end
    else
      prompt "It's a tie!"
    end

    if player_score == WINNING_SCORE
      prompt "You won best of five!"
      break
    elsif computer_score == WINNING_SCORE
      prompt "Computer won best of five.  Better luck next time!"
      break
    end

    prompt "We play to best of five. Current score: player - #{player_score}," \
    " computer - #{computer_score}. Press any key to continue..."
    gets.chomp
  end

  if player_score == WINNING_SCORE || computer_score == WINNING_SCORE
    prompt "Would you like to play again? (y or n)"
    game_answer = gets.chomp

    break unless play_again?(game_answer)
  end
end

prompt 'Thanks for playing Tic Tac Toe.  Goodbye!'
