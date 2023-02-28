birthdays = Hash.new

puts "What's up?"
choice = gets.chomp

case choice
  when "add"
    puts "Whose birthday do you want to remember?"
    name = gets.chomp
    puts "What is their birthday?"
    date = gets.chomp
    birthdays[name.to_sym] = date.to_s
  if birthdays[name.to_sym] == nil
    puts "You've already added their birthday!"
  end
end


puts birthdays