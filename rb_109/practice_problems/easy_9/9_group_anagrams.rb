# PROMPT #
  # given an array of words
  # write a program that:
  #   prints out groups (in arrays) of anagrams

  # PLAN ##
    # method?
      # how many arrays do we need?
    # find which words are anagrams of eachother
    # put all of those words into the same array
    # print that array

    # find anagrams of
      # use Array.new so you don't have to decide how many you need
      # loop and print once you have all the anagrams
      # 


## METHODS AND VARIABLES ##

require 'pry'

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

def find_anagrams(array)
  array.map do |word|
    a.split('').sort == b.split('').sort
  end
end

def print_anagrams(array)

end
### PROGRAM AND EXAMPLES ###

arrays = words.map do |word|
  word.split('').sort.join
end
arrays.uniq!
sub_arrays = arrays.each_slice(1).to_a

words.each do |word|
  sub_arrays.each do |sub|
    if word.split('').sort.join == sub[0]
      sub << word
    end
  end
end

sub_arrays.each do |array|
  p array[1..-1]
end
