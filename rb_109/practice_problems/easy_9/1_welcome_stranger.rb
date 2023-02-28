# PROMPT #
  # write a method that takes two arguments
  #   an array and a hash
  #   the array contains the name
  #   the hash contains the title and occupation
  # write a greeting that comes out like:
  # "Hello, John Q Doe! Nice to have a Master Plumber around."

  # PLAN ##
  # 1. method that takes array and hash
  # 2. combine name into a single variable - name
  # 3. use string interpolation with the rest of the quote to print

## METHODS AND VARIABLES ##

def greetings(array, hash)
  name = array.join(' ')
  puts "Hello #{name}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

### PROGRAM AND EXAMPLES ###

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
