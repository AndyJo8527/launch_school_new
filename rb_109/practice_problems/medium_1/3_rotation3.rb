# PROMPT #
  # write a method that takes a number and returns its 'max rotation'
    # whole number is rotated then
    # first number locked and rest rotated then
    # second number locked and rest rotated, etc.

  # PLAN ##
    # rotate the number
    # rotate [1..-1]
    # rotate [2..-1]
    # rotate until done (how to identify when done?)


## METHODS AND VARIABLES ##

require 'pry'

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

def max_rotation(num)
  index = num.to_s.size
  loop do
    break if index == 0
    num = rotate_rightmost_digits(num, index)
    index -= 1
  end
  num
end

### PROGRAM AND EXAMPLES ###

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) #== 7_321_609_845
