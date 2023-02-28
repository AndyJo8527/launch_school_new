def calculate_bonus(salary, boolean)
  if boolean == true
    bonus = salary / 2
  else
    bonus = 0
  end
  bonus
end



puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# method with two arguments, an integer and a boolean
# if boolean is true, bonus is half salary
# if boolean is false, bonus is 0