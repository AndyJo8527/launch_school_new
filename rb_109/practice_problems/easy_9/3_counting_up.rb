# PROMPT
  # method that takes an integer
  # return an array comprised of all integers from 1..x
    # each integer is an individual element in the array
  
  # PLAN ##
    # 1. method that takes an integer
    # 2. make an array from the range of 1..integer

# MEthods and VAriabes ##

def sequence(num)
  if num == num.abs
    (1..num).to_a
  else
    (num..-1).to_a
  end
end

### ex ###

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-5)
p sequence(-1)