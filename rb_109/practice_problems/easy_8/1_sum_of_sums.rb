# PROMPT #
  # write a method that takes an array
  # RETURNS the sum of sums of numbers
  
  # Plan ##
    # method that takes one array as argument
    # start total at zero
    # add first number to total
    # add first and second to total
    # 1, 2, 3, to total, etc
    # return the total
  
## METHODS AND VARIABLES ##

def sum_of_sums(array)
  total = 0
  index = 0
  loop do
    break if index == array.size
    total += array[0..index].inject(:+)
    index += 1
  end
  total
end

def 1_sum_of_sums(numbers)
  sum_total = 0
  accumulator = 0

  numbers.each do |num|
    accumulator += num
    sum_total += accumulator
  end

  sum_total
end

def 2_sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end

### PROGRAM AND EXAMPLES ###

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
