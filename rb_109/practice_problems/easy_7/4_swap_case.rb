# PROMPT #
  # write a METHOD that takes a string
    # RETURNS a new string with each letter swapped:
      # lowercase becomes capital
      # capital becomes lowercase
  # may NOT use string#swapcase

## METHODS AND VARIABLES ##

require 'pry'

def swapcase(string)
  swap_string = string.split('').map do |char|
    char == char.upcase ? char.downcase : char.upcase
  end
  swap_string.join
end

### PROGRAM ###

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'