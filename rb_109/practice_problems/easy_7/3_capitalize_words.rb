# PROMPT #
  # Write a method
  # takes a string of multiples words
  # returns a NEW string with the first letter of each word capitalized
  


## METHODS AND VARIABLES ##

require 'pry'

def word_cap(string)
  new_string = string.split.map do |word|
    word.capitalize
  end
  new_string.join(' ')
end

### PROGRAM ###

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

