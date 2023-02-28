# prompt #
 # write a new method that collects all the substrings
  # that are also palindroms
require 'pry'
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

def palindromes(string)
  sub_arr = substrings(string)
  palindromes = sub_arr.select do |string|
    string == string.reverse && string.size > 1
  end
  palindromes
end


### PROGRAM AND EXAMPLES ###

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]