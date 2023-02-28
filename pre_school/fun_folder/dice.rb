require 'pry'
DICE = [4, 6, 8, 10, 12, 20, 100]

MONSTER = {hp: 100, ac:15, speed: 30}

HERO = {hp: 100, ac:12, speed: 30}

def dice_roll(x)
  puts ">> Modifier?"
  modifier = gets.chomp.to_i
  die_roll = rand(1..x)
  total = modifier + die_roll
  prompt("Die Roll: #{die_roll}")
  prompt("Total: #{total}")
  total
end

def prompt(message)
  puts ">> #{message}"
end


loop do
  prompt "What dice are you rolling? d(4, 6, 8, 10, 12, 20, 100)"
  die = gets.chomp.to_i
  if DICE.include?(die)
    result = dice_roll(die)
    break
  else
    prompt("That's not a valid die. Please choose from one of the options.")
    next
  end
end

