# PROMPT #
  # method that takes two arrays as an argument
  # RETURNS a new array that containst the product of each pair
  # pairs are the numbers with the same index
  
  
# Plan 
  # method that takes two arguments, arr_1 and arr_2
  # final array prod_arr initialized to put into 
  # iterate through arr_1 and multiply it to the same index (each with index?)
  # put the product of that number into the prod_arr
  # return the prod_arr at the end


## METHODS AND VARIABLES ##

# def multiply_list(arr_1, arr_2)
#   prod_arr = [ ]
#   arr_1.each_with_index do |num, index|
#     prod_arr << (num * arr_2[index])
#   end
#   prod_arr
# end

def multiply_list(arr_1, arr_2)
  arr_3 = []
  arr_1.zip(arr_2) {|x, y| arr_3 << ( x * y )}
  arr_3
end

### PROGRAM AND EXAMPLES ###

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
