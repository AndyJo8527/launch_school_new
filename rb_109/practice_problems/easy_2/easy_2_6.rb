# PROMPT #
# print all odd numbers from 1 to 99 (inclusive)
# each number on a seperate line

## EXAMPLES ##


### VDM ###


#### PROGRAM ####
numbers = Array(1..99)

numbers.each do |num|
  if num.odd?
    puts num
  end
end
