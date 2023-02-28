# PROMPT #
  # method that takes an array as an argument
  # returns the array with every other element (begining with first)


  # PLAN ##
    # write a method that takes an array
    # select or delete every other element
    # return the array



## METHODS AND VARIABLES ##

def oddities(array)
  odd_array = []
  array.each_with_index do |num, index|
    if index.even?
      odd_array << num
    end
  end
  odd_array
end

### PROGRAM AND EXAMPLES ###

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]
