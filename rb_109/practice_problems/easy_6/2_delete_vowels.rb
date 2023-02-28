# PROMPT
  # method that takes an array of strings
    # returns array with same string values except:
      # all vowels removed (a, e, i, o, u)

  # test cases include uppercase letters
# PLAN
  # method that takes an array
  # scan the string for vowels
    # need to set a constant for vowels?
    # remove vowels from string
    # select non vowels? use #reject
  # return new string

## METHODS AND VARIABLES

require 'pry'

VOWELS = %w(a e i o u A E I O U)

def aremove_vowels(string_array)
  consonants = string_array.map do |chars|
                new_string = ''
                chars.chars.each do |char|
                  if VOWELS.include?(char)
                    chars.delete(char)
                  else
                    new_string << char
                  end
                end
                new_string
              end
  consonants
end

def remove_vowels(string_array)
  string_array.map {|string| string.delete('aeiouAEIOU')}
end

### PROGRAM AND EXAMPLES

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']