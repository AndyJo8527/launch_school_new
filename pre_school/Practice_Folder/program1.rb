print "What's your first name?"
first_name = gets.chomp.capitalize!

print "What's your last name?"
last_name = gets.chomp.capitalize!

print "What city do you live in?"
city = gets.chomp.capitalize!

print "What state do you live in? (Use abreviations)"
state = gets.chomp.upcase!

print "Hello, #{first_name} #{last_name} from #{city}, #{state}"
