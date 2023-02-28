# PROMPT #
# method
# takes a number as an argument
# if number is positive, RETURN the negative
# if number is 0 or negative, RETURN the original number

## EXAMPLES ##
# negative(5) == -5
# negative(-3) == -3
# negative(0) == 0      # There's no such thing as -0 in ruby

### METHODS AND VARIABLES ###

def my_negative(num)
  if num > 0
    num = -num
  else
    num = num
  end
  num
end

def negative(num)
  num > 0 ? -num : num
end

def other_negative(num)
  -num.abs
end

#### PROGRAM ####

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0
