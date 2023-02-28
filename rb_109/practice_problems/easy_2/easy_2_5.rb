# PROMPT #

# program
# ask for the user's name
# greet the user
# if input uses ! program should say "HELLO NAME. WHY ARE WE SCREAMING?"

## EXAMPLES ##
# see other screen
require 'pry'
### PROGRAM ###

puts "What is your name?"
name = gets.chomp

if name.include?('!')
  new_name = name.chop
  puts "HELLO #{new_name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name.capitalize}."
end

