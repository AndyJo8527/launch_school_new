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
  num_2.times do
    row << '*'
  end
  row
end

def first_half(size)
  index_1 = size/2
  index_2 = 1
  arr = []
  1.upto((size.to_f/2).ceil) do 
    arr << make_row(index_1, index_2)
    index_1 -= 1
    index_2 += 2
  end
  arr
end

def second_half(size)
  index_1 = 1
  index_2 = (size - 2)
  arr = []
  1.upto((size.to_f/2).ceil) do
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

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def their_diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

### PROGRAM AND EXAMPLES ###

diamond(3)
diamond(5)
diamond(7)
diamond(9)
