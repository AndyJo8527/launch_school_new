# PROMPT
  # write a method that takes a string
  # returns a string with words reverse if:
    # word is longer than 5 characters

# PLAN ##
  # method that takes a string
  # separate string by word
  # determine if the word is more or less than 5 chars
    # reverse the order of the words with more than 5 chars
  # put them in a new string and add them in from the end
  # return new string

## METHODS AND VARIABLES ##

def reverse_words(string)
  new_string = string.split.map do |word|
                if word.size > 5
                  word.reverse
                else
                  word
                end
              end
  new_string.join(' ')
end

### EXAMPLES ###
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
