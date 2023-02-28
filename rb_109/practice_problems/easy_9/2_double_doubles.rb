# PROMPT #
  # write a method that takes an integer
  # return double that integer unless
  #   integer is a 'double number'
  # in that case, return as is

  # PLAN ##
    # write the method for returning double that number
    # maybe a second method to scan for 'doubles'
    # if doubles == true return num

## METHODS AND VARIABLES ##

require 'pry'

def double?(num)
  numbers = [ ]
  if num.to_s.size.odd?
    false
  elsif
    numbers = num.digits.reverse
    numbers = numbers.each_slice(numbers.size/2).to_a
    numbers = numbers.map do |array|
      array.inject(:+)
    end
  end
  if numbers.first == numbers.last
    true
  else
    false
  end
end

def twice(num)
  if double?(num) == true
    num
  else
    num *= 2
  end
  binding.pry
end


### PROGRAM AND EXAMPLES ###

# p twice(37) == 74
# p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
# p twice(103103) == 103103
# p twice(3333) == 3333
# p twice(7676) == 7676
# p twice(123_456_789_123_456_789)
p twice(5) == 10
