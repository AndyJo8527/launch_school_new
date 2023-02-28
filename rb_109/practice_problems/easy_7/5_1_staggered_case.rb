# PROMPT #
  # write a METHOD that takes a STRING
    # RETURNS new string with staggered capitalization
      # every other character is capitalized
      # spaces count as characters

## VARIABLES AND DEFINITIONS ##

require 'pry'

def staggered_case(string)
  stagg_string = ''
  string.split('').each_with_index do |char, index|
    index == 0 || index.even? ? stagg_string << char.upcase : stagg_string << char.downcase
  end
  stagg_string
end

### PROGRAM ###

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
