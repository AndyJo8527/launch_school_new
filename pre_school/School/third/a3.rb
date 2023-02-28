PASSWORD = 'SecreT'

loop do
  puts '>> Please enter your password:'
  password_try = gets.chomp
  break if password_try == PASSWORD
  puts '>> Invalid password!'
end

puts 'Welcome!'

=begin this was mine
loop do
  puts ">> Please enter your password."
  password = gets.chomp
  
  if password == "BiGaL"
    puts "Welcome!"
    break
  else 
    puts "Incorrect password!"
  end
  
end

=end