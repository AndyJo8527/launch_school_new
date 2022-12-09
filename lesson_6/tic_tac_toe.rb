require 'yaml'
MESSAGES = YAML.load_file('ttt_messages.yml')

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

SCORE = { player: 0, computer: 0, tie: 0 }

PARTICIPANTS = ['player', 'computer']

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  system('clear')
  puts "You're a #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |     "
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first.to_s
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def two_in_a_row(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))})"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt(MESSAGES['not_valid_choice'])
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

  WINNING_LINES.each do |line|
    square = two_in_a_row(line, brd, COMPUTER_MARKER)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = two_in_a_row(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  if brd[5] == INITIAL_MARKER
    square = 5
  end

  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd) == []
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def show_score
  SCORE.each do |key, value|
    puts "#{key.capitalize}: #{value}"
  end
  sleep(2)
end

def reset_score
  SCORE.map do |key, _value|
    SCORE[key] = 0
  end
end

def place_piece!(brd, current_player)
  if current_player == 'computer'
    computer_places_piece!(brd)
  elsif current_player == 'player'
    player_places_piece!(brd)
  end
end

def alternate_player(current_player)
  if current_player == 'computer'
    current_player = 'player'
  elsif current_player == 'player'
    current_player = 'computer'
  end
end

loop do
  prompt(MESSAGES['welcome'])
  prompt(MESSAGES['rules'])
  sleep(4)
  loop do
    prompt(MESSAGES['goes_first'])
    current_player = gets.chomp
    case current_player
    when 'player'
      current_player = 'player'
    when 'computer'
      current_player = 'computer'
    when 'random'
      current_player = PARTICIPANTS.sample
    else
      prompt(MESSAGES['not_valid_choice'])
      next
    end

    loop do
      board = initialize_board

      loop do
        display_board(board)
        place_piece!(board, current_player)
        current_player = alternate_player(current_player)
        break if someone_won?(board) || board_full?(board)
      end

      display_board(board)

      if someone_won?(board)
        prompt("#{detect_winner(board)} won!")
        sleep(2)
        if detect_winner(board) == 'Player'
          SCORE[:player] += 1
        elsif detect_winner(board) == 'Computer'
          SCORE[:computer] += 1
        else
          next
        end
      else
        prompt "It's a tie!"
        SCORE[:tie] += 1
      end

      if SCORE[:player] == 1 || SCORE[:computer] == 1
        system('clear')
        prompt("Final Score:")
        show_score
        break
      else
        show_score
        next
      end
    end
    prompt(MESSAGES['game_again'])
    answer = gets.chomp
    if answer.downcase == 'y' || answer.downcase == 'yes'
      reset_score
      system('clear')
      next
    else
      break
    end
  end
  break
end
prompt(MESSAGES['game_end'])
sleep(1)
