# PROMPT
  # method that takes an integer
  # return the first fib num INDEX that
    #has the number of digits equal to the integer
    # INDEXES begin at one (return index + 1)
  
  #PLAN
    # make an array of fib numbers
      # premade array?
        # begin with array = [0, 1, 1]
        # this will ensure you're getting the right index
      # until num.digits.size == x
        # looping fib numbers
    # return the index of the number that has those digits


## METHODS AND VARIABLES ##

require 'pry'

def find_fibonacci_index_by_length(digits)
  fib_arr = []
  fib_num = 1
  2.times {fib_arr << fib_num}
  loop do
    break if fib_num.to_s.length == digits
    fib_num = fib_arr[-1] + fib_arr[-2]
    fib_arr << fib_num
  end
  fib_arr.size
end

def afind_fibonacci_index_by_length(digits) # this one takes a while to compute
  fib_nums = [1, 1]
  until fib_nums[-1].digits.size == digits
     fib_nums << (fib_nums[-2] + fib_nums[-1])
  end
  fib_nums.size
end

### PROGRAM AND EXAMPLES ###

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(3) == 12
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847