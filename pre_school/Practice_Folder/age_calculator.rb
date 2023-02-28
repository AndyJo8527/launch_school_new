puts "How old are you?"
age = gets.chomp.to_i

puts "What measurement do you want to see?"
measurement = gets.chomp

case measurement
  when "months"
    age = age * 12
    p "You are #{age} months old!"
  when "weeks"
    age = age * 52
    p "You are #{age} weeks old!"
  when "days"
    age = age * 356.25
    p "You are #{age} days old!"
  when "hours"
    age = age * 8766
    p "You are #{age} hours old!"
  when "minutes"
    puts "It's getting rough here!"
    age = age * 525600
    p "You are #{age} minutes old!"
  when "seconds"
    puts "Woof, who knows?"
  else
    puts "That's not an applicapble measurement."
end