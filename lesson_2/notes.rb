puts "what did you want to put?"
choice = gets.chomp

VALID_CHOICES_TWO = {
  'rock' => 'r',
  'paper' => 'p',
  'scissors' => 'sc',
  'lizard' => 'l',
  'spock' => 'sp'
}

case choice
when choice.start_with?('r')
  'rock'
when choice.start_with?('p')
  'paper'
when choice.start_with?('sc')
  'scissors'
when chocie.start_with?('l')
  'lizard'
when choice.start_with?('sp')
  'spock'
else
  'not a valid choice'
end


