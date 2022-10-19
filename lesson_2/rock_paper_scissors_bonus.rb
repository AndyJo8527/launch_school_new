# use single letters instead of full words
# keep a tally of who won
require 'yaml'
MESSAGES = YAML.load_file('messages.yml')

VALID_CHOICES = %w(rock paper scissors lizard spock)

WINNING_COMBOS = {
  'rock' => ['scissors', 'lizard'],
  'lizard' => ['spock,' 'paper'],
  'spock' => ['scissors', 'rock'],
  'paper' => ['spock', 'rock'],
  'scissors' => ['paper', 'lizard']
}

SCORE = {player: 0, computer: 0, ties: 0}

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

def update_score(first, second)
  if WINNING_COMBOS[first].include?(second)
    SCORE[:player] += 1
  elsif WINNING_COMBOS[second].include?(first)
    SCORE[:computer] += 1
  else
    SCORE[:ties] += 1
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
name = gets.chomp().to_s()
valid_name(name)
prompt("Welcome #{name}, let's go!")

sleep(1)
system('clear')

loop do
  choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt(MESSAGES['valid_choice'])
    end
  end

  computer_choice = VALID_CHOICES.sample()

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  win?(choice, computer_choice)
  update_score(choice, computer_choice)

  #display_results(choice, computer_choice)

  prompt(MESSAGES['again'])
  answer = gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing #{name}. Good bye!")
