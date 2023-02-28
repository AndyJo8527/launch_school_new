# PROMPT # 
  # write a method that takes a string
  # return an array of all possible substrings that start with the 
    #first letter
  # return value should be sorted from shortest to longest
  
  # PLAN ##
    # method that takes a string as argument
    # create an array for the substrings
    # put a string of the first letter into the array
    # put a string of the first and second letter into array
    # continue until full word is in array
      ## break if array[-1] == string
    # return array ordered (should be in the right order when done this way)
  
  
## METHODS AND VARIABLES ##

require 'pry'

def leading_substrings(string)
  sub_arr = [ ]
  string.chars.each_with_index do |char, index|
    sub_arr << string[0..index]
  end
  sub_arr
end

def 1_leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

### PROGRAM AND EXAMPLES ###

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
