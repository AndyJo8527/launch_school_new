my_numbers = [1, 4, 3, 7, 2, 6]

def multiply(numbers, multiple)
  counter = 0
  multiplied_numbers = []
  
  loop do
    break if counter == numbers.size
    
    current_number = numbers[counter]
    multiplied_numbers << current_number * multiple
    
    counter += 1
  end

 p multiplied_numbers
end

multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]