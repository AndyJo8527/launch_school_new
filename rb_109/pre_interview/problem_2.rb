# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.


# Plan
  # method that takes an array
  # iterate over the array in chunks of five [x..5] or size == 5 or something
    # either store or keep track of that number (maybe have an object that points to a number and if the
    #                                            number is smaller, it replaces that object)
  # Return the smallest number
require 'pry'

def minimum_sum(array)
  smallest_sum = []
  if array.size < 5
    return nil
  end
  array.each_with_index do |num, index|
    if array.slice(index, 5).size >= 5
      smallest_sum << array.slice(index, 5).inject(:+)
    end
  end
  smallest_sum.min
end

# Examples:

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".