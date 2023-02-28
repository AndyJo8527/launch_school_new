# PROMPT #
  # write a method that takes two arguments
    # the first number is the starting number, second is final number
    # if a number is divisible by 3 => Fizz
    # 5 => Buzz
    # both => FizzBuzz
    
    # Plan ##
      # create an array from the numbers given
      # determine which numbers are going to be replaced
      # iterate over the array and replace numbers divisible by 3, 5, 3/5
      # PRINT out all numbers so they look like: 
        #  -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
      

## METHODS AND VARIABLES ##

def fizzbuzz(first, last)
  numbers = (first..last).to_a
  numbers = numbers.map do |num|
    if num % 3 == 0 && num % 5 == 0
      num = 'FizzBuzz'
    elsif num % 3 == 0
      num = 'Fizz'
    elsif num % 5 == 0
      num = 'Buzz'
    else
      num
    end
  end
  puts numbers.join(', ')
end

def their_fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end

### PROGRAM AND EXAMPLES

fizzbuzz(1, 15)
