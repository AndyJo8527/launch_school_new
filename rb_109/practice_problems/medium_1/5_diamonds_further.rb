# # PROMPT #
#   write a method that takes an odd integer as an argument
#   using that odd integer, make a diamond out of '*' where the
#   odd number is the number of rows to make and the number of '*'s in
#   the middle row

  # PLAN ##
    # method that takes an odd integer
    # use integer to determine amount of rows (times?)
      # begin with one, build up and go down or
        # start in the middle
      # use integer to determine middle row
      # print off rows of '*' based on the integer


## METHODS AND VARIABLES ##

require 'pry'

def make_row(num, num_2)
  row = ''
  num.times do 
    row << ' '
  end
  row << '*'
  unless num_2 == -1
    num_2.times do 
      row << ' '
    end
    row << '*'
  end
  row
end

def first_half(size)
  arr = []
  index_1 = ((size.to_f/2).floor)
  index_2 = -1
  1.upto((size.to_f/2).ceil) do
    arr << make_row(index_1, index_2)
    index_1 -=1
    index_2 += 2
  end
  arr
end

def second_half(size)
  arr = []
  index_1 = 1
  index_2 = (size - 4)
  1.upto((size.to_f/2).floor) do
    arr << make_row(index_1, index_2)
    index_1 += 1
    index_2 -= 2
  end
  arr
end

def diamond(size)
  arr = first_half(size)
  arr << second_half(size)
  puts arr
end

### PROGRAM AND EXAMPLES ###

diamond(3)
diamond(5)
diamond(7)
diamond(9)
