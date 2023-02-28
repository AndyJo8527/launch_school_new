# PROMPT #
  # write a method that takes two integers (second one being 'n')
  # method that rotates the last n digits of a number

  # PLAN ##
    # method that takes two integers
    # use the 'n' to find where the rotation needs to begin (maybe with index in arr)
    # use the rotate integer method from before and rotate that part
      # array[-n..-1] send through rotate integer method 
      # potentially pop end off as a string, rotate, then add to end then back to i

## METHODS AND VARIABLES ##

require 'pry'

def rotate_integer(num)
  num_arr = num.digits.reverse
  rotate_array(num_arr).join.to_i
end

def rotate_array(array)
  new_array = array[1..-1]
  new_array << array[0]
end

def rotate_rightmost_digits(num, digit)
  string = num.to_s
  s_rot = string[-digit..-1]
  string = string[0...-digit]
  string << rotate_array(s_rot)
  string.to_i
end

### PROGRAM AND EXAMPLES ###

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
