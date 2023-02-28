# PROMPT #
  # method that takes an array (grocery list)
  # RETURNS an array with the item and the amount needed

  # PLAN ##
    # method that takes an array
    # empty array for final return
    # iterate over original array and add the item the 
    #   amount of times stated in the second number
    #   (#.times do, etc.)
    # return final array

## METHODS AND VARIABLES ##

def buy_fruit(g_list)
  final_list = [ ]
  g_list.each do |item|
    item[1].times do
      final_list << item[0]
    end
  end
  final_list
end

def their_buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

### PROGRAM AND EXAMPLES ###

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]
