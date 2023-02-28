PASSWORD = 'SecreT'
USERNAME = 'BigAl'

loop do
  puts '>> Please enter your username:'
  user_name_try = gets.chomp
  puts '>> Please enter your password'
  password_try = gets.chomp
  
  break if password_try == PASSWORD && user_name_try == USERNAME
  puts '>> Invalid password or Username!'
end

puts 'Welcome!'