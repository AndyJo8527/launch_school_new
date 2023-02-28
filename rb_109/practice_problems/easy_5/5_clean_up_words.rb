# Prompt #
  # write a method that takes a string
  # remove all characters that are non-alphabetic
  # return the same string 
  # if two or more characters are replaced, only add one space

  # Plan ##
    # method that takes a string
    # iterate through the string to find non-alphabetic characters
    #   create a constant that has the alphabet in it
    # remove the non alphabetic characters and insert a space
    # if the previous character is a space, don't add anything


## METHODS AND VARIABLES ##
require 'pry'
LETTERS = ('a'..'z').to_a

def cleanup(string)
  arr = string.chars
  clean_string = ''
  arr.each do |char|
    if LETTERS.include?(char)
      clean_string << char
    elsif clean_string[-1] == ' '
      char
    else
      clean_string << ' '
    end
  end
  clean_string
end


### PROGRAM AND EXAMPLES ###
p cleanup("---what's my +*& line?") == ' what s my line '