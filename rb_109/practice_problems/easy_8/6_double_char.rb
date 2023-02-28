# write a method that takes a string
  # RETURNS a new string with every letter doubled
  
  # PLAN ##
    # new blank string
    # iterate over the string and add each letter twice to the blank string
    # return the new_string
  
## METHODS AND VARIABLES ##

def repeater(string)
  re_string = ''
  string.chars.each do |char|
    2.times {re_string << char}
  end
  re_string
end

### PROGRAM AND EXAMPLES ###

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
