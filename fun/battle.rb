require 'pry'
DICE = [4, 6, 8, 10, 12, 20, 100]

monster = {hp: 100, ac:15, speed: 30}

hero = {hp: 100, ac:12, speed: 30}

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
  sleep(1)
end


prompt("Welcome to the battle pit.")



