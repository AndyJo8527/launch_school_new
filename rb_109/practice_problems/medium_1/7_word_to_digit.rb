# PROMPT #
  # method that takes a string
  # replace each 'number word' with the integer
  # return the string

  # PLAN ##
    # method that takes a string
    # find the 'number words'
      # iterate over a split up string
    # replace with the integer
      # map and replace
    # return the string


## METHODS AND VARIABLES ##

require 'pry'

NUM_WORDS = {'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5'}

def word_to_digit(string)
  words = string.split.map do |word|
    if word.include?('.')
      word = word.delete('.')
      if NUM_WORDS.keys.include?(word)
        word = NUM_WORDS[word]
      else
        word = word
      end
      word << '.'
    else
      if NUM_WORDS.keys.include?(word)
        word = NUM_WORDS[word]
      else
        word = word
      end
    end
    word
  end
  words.join(' ')
end


### PROGRAM AND EXAMPLES ###

p word_to_digit('Please call me at five five five one two three four. Thanks.') == "Please call me at 5 5 5 1 2 3 4. Thanks."
