# PROMPT
  # write a method that takes an array as argument
    # an array of integers
  # returns the average of all the numbers in the array
  # don't use array#sum

  # PLAN ##
    # add up all of the numbers in the array
    # divide that number by the amount of elements in the array
    # return that value

## METHODS AND VARIABLES ##

def average(array)
  p (array.inject(:+) / array.size).to_f
  
end

### EXAMPLES ###
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
