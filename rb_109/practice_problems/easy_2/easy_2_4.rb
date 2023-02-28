# display when the user will retire
# display how many years they have to work until retirement

# EXAMPLES #
# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

## Definitions and Variables ##
YEAR = 2023

### PROGRAM ###
puts "What is your age?"
age = gets.chomp.to_i

puts "What age would you like to retire?"
retire_age = gets.chomp.to_i

more_years = retire_age - age

retire_year = YEAR + more_years

puts "It's #{YEAR}. You will retire in #{retire_year}."
puts "You have only #{more_years} years of work to go!"
