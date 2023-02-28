# PROMPT
  # write a method that takes a string
  # returns a string with the words reversed in order
  
  # PLAN ##
    # method that takes a string
    # separate string by word
    # reverse the order of the words
      # put them in a new string and add them in from the end
    # return new string

## METHODS AND VARIABLES ##

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

### EXAMPLES ###

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

