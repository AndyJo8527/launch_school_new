# PROMPT #

  # Write a method 
    # combines two arrays
    # alternates the values in the arrays

## METHODS AND VARIABLES ##

require 'pry'

def interleave(arr_1, arr_2)
  arr_1.zip(arr_2).flatten
end

def their_interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    binding.pry
    result << element << array2[index]
  end
  result
end

### PROGRAM ###

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']


