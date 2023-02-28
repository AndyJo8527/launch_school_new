# PROMPT
  # write a method that takes an array
  # return the array with the elements rev_arrd (MUTATED)
  # cannot use #rev_arr or # rev_arr!

  #PLAN
  # method that takes an array
  # switch the first and last element in array
  # switch the second and second to last element in array
  # continue until all are switched
    # odd vs even????
  # return original array, which should be MUTATED

## METHODS AND VARIABLES ##

require 'pry'

def rev_arr!(array)
  index_one = 0
  index_two = -1
  while index_one < array.size/2
    array[index_one], array[index_two] = array[index_two], array[index_one]
     index_one += 1
     index_two -= 1
  end
  array
end

### PROGRAM AND EXAMPLES ###

list = [1,2,3,4]
result = rev_arr!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p rev_arr!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p rev_arr!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p rev_arr!(list) == [] # true
p list == [] # true