##### PROMPT #####
# create a simple tip calculator
# prompt for a bill amount and a tip rate
# must compute the tip and then display tip and total amount of bill

##### EXAMPLES #####
# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0


########## PROGRAM ##########
puts "How much was the bill?"
bill = gets.chomp.to_f

puts "How much would you like to tip (percentage)?"
tip_percentage = gets.chomp.to_f / 100

tip = bill * tip_percentage
bill_total = bill + tip

puts "The tip is $#{tip}"
puts "The total is $#{bill_total}"
