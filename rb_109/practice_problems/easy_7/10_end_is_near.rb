# PROMPT #
  # method that RETURNS next to last word in the string


# PLAN ##
  # initialize a new string
  # make the string an array of words
  # make the new string point to the value of the second to last word
  # return new string


## METHODS and VARIABLES ##

def penultimate(string)
  string.split[-2]
end


### PROGRAM AND EXAMPLES ###

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'