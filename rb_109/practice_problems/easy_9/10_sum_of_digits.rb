# PROMPT #
  # write a method that takes an integer
  # returns the sum of the integer's digits

  # PLAN ##
    # split number into digits
      # make a string, separate by digit, make an integer
    # add all those digits into a sum
    # return the sum


## METHODS AND VARIABLES ##

def sum(num)
  num.to_s.split('').map(&:to_i).inject(:+)
end

def un_refactored_sum(num)
  arr = num.to_s.split('')
  arr = arr.map do |num|
    num.to_i
  end
  arr.inject(:+)
end

### PROGRAM AND EXAMPLES ###

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
