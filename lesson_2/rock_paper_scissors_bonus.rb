# use single letters instead of full words
require 'yaml'
MESSAGES = YAML.load_file('messages.yml')

VALID_CHOICES = %w(rock paper scissors lizard spock)

WINNING_COMBOS = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['spock', 'rock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['spock', 'paper'],
  'spock' => ['scissors', 'rock']
}

SCORE = { player: 0, computer: 0, ties: 0 }

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  if WINNING_COMBOS[first].include?(second)
    prompt("You won!")
  elsif WINNING_COMBOS[second].include?(first)
    prompt("Sorry, Computer won.")
  else
    prompt("It was a tie!")
  end
end

def player_win
  SCORE[:player] += 1
end

def computer_win
  SCORE[:computer] += 1
end

def tie
  SCORE[:ties] += 1
end

def reset_score
  SCORE.map do |key, _value|
    SCORE[key] = 0
  end
end

def update_score(first, second)
  if WINNING_COMBOS[first].include?(second)
    player_win
  elsif WINNING_COMBOS[second].include?(first)
    computer_win
  else
    tie
  end
end

def valid_name(name)
  loop do
    if name.empty?()
      prompt(MESSAGES['valid_choice'])
      prompt(MESSAGES['name_request'])
      name = gets.chomp
    else
      break
    end
  end
end

prompt(MESSAGES['welcome'])
prompt(MESSAGES['name_request'])
name = gets.chomp.to_s.capitalize
valid_name(name)
prompt("Welcome #{name}, let's go!")

sleep(1)
system('clear')

loop do
  prompt(MESSAGES['rules'])
  sleep(3)
  system('clear')

  loop do
    choice = ''

    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = gets.chomp
      if VALID_CHOICES.include?(choice)
        break
      else
        prompt(MESSAGES['valid_choice'])
      end
    end

    computer_choice = VALID_CHOICES.sample()

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")
    sleep(1)

    win?(choice, computer_choice)
    update_score(choice, computer_choice)

    sleep(2)
    system('clear')

    if SCORE[:player] == 3
      system('clear')
      puts "--You won!--"
      sleep(2)
      break
    elsif SCORE[:computer] == 3
      system('clear')
      puts "--Computer won!--"
      sleep(2)
      break
    else
      SCORE.each do |participant, wins|
        puts "#{participant.capitalize}: #{wins} wins"
      end
      puts ' '
      next
    end
  end

  prompt(MESSAGES['again'])
  answer = gets.chomp.to_s
  if answer.downcase == 'y' || answer.downcase == 'yes'
    reset_score
    system('clear')
    next
  else
    break
  end
end

system('clear')
prompt("Thank you for playing #{name}. Good bye!")
sleep(4)
