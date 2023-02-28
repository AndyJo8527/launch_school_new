# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# Plan:
  # method that takes an array
  # compare num to all others in the array
    # find out how many are smaller than num
    ## only count each number once
  # add to a count every time num is larger than the other numbers
  # put that count into an array
  # return the array


# METHOD #

require 'pry'

def smaller_numbers_than_current(numbers)
  higher = numbers.map do |num|
    count = 0
    numbers.uniq.map do |num_2|
      if num > num_2
        count += 1
      end
    end
    count
  end
end

# Examples:

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".