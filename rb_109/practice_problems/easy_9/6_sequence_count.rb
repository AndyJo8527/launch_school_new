# PROMPT #
  # method that takes two integers as an argument
  #   first number is a count
  #   second number is the sequence 
  #     second number is where it starts and 
  #       how much to count by
  # RETURN an array with the same amount of elements 
  #   equal to the count integer

  # PLAN ##
    # method that takes two integers
    # initialize an empty array
    # add the second integer to the array,
      # increase the number by that amount
      # add it to the array
      # repeat as many times as the first integer
    # return the final array
  
## METHODS AND VARIABLES ##

require 'pry'

def sequence(count, start)
  arr = [ ]
  index = 0
  freq = start
  loop do
    break if index == count
    arr << start
    start += freq
    index += 1
  end
  arr
end

def their_sequence(count, first)
  (1..count).map { |value| value * first }
end

### PROGRAM AND EXAMPLES ###

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
