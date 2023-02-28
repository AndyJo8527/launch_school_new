# PROMPT #
  # write a method that returns a list of all substrings
  # Plan ##
    # method that takes a string
    # put in first letter
    # 1..2 letter
    # 1..3 letter until string is complete
    # then move on and begin at second letter (2, 2..3, 2..4, etc.)
    # put all strings into an array. If iterated over, it should be in
      # the right order

## METHODS AND VARIABLES ##

def leading_substrings(string)
  sub_arr = [ ]
  string.chars.each_with_index do |char, index|
    sub_arr << string[0..index]
  end
  sub_arr
end

def substrings(string)
  sub_arr = [ ]
  until string.empty?
    sub_arr << leading_substrings(string)
    string = string[1..-1]
  end
  sub_arr.flatten(1)
end


### PROGRAM AND EXAMPLES


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
