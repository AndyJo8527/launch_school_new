# PROMPT #
  # write a method that
  #   determines average of the three integers passed
  #   returns letter value associated with that grade
  #   Numerical Score Letter	Grade
  #   90 <= score <=100	'A'
  #   80 <= score < 90	'B'
  #   70 <= score < 80	'C'
  #   60 <= score < 70	'D'
  #    0 <= score < 60	'F'

  # PLAN ##
    # method that takes three integers
    # find the average of those three integers
    # compare that number to the "chart" 
      # maybe a case or constants
    # return the letter number associated with average


## METHODS AND VARIABLES ##

def get_grade(num_1, num_2, num_3)
  average = (num_1 + num_2 + num_3)/3
  case average
  when 90..100
    "A"
  when 80..89
    "B"
  when 70..79
    "C"
  when 60..69
    "D"
  else
    "F"
  end
end

### PROGRAM AND EXAMPLES ###

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
