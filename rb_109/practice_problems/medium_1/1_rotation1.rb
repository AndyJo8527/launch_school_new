# PROMPT #
  # move the last number of the array to the beginning of the array
  # no array#rotate or array#rotate!

  # PART II
  #   make the method work with a string
  #   make the method work with an integer

  # PLAN ##
  # 


## METHODS AND VARIABLES ##

def rotate_integer(num)
  num_arr = num.digits.reverse
  rotate_array(num_arr).join.to_i
end

def rotate_array(array)
  new_array = array[1..-1]
  new_array << array[0]
end

### PROGRAM AND EXAMPLES ###

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true




