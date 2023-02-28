# PROMPT #
  # method that takes a first/last name as a string
  # RETURNS lastname, space firstname as a string

  # PLAN ##
    # method that takes a string
    # initialize variables for first name and last name
    # use string interpolation to make a string using those 
      # variables


## METHODS AND VARIABLES ##

def swap_name(string)
  firstname, lastname = string.split
  "#{lastname}, #{firstname}"
end

def their_swap_name(string)
  string.split.reverse.join(', ')
end


### PROGRAM AND EXAMPLES ###

p swap_name('Joe Roberts') == 'Roberts, Joe'
