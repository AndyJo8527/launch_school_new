# PROMPT #
  # write a method that takes two arrays
    # new array that contains the product of every pair of numbers
    # RETURN a NEW array
  # sort the results by increasing value
  
  # PLAN #
    # method takes two arrays
    # multiply the first number in the first array by each number in the second
      # put those products into a new array
    # repeat for each number in the first array
    # return the third array
  
## METHODS AND VARIABLES ##


# def multiply_all_pairs(arr_1, arr_2)
#   arr_3 = []
#   index = 0
#   loop do 
#     break if index > arr_2.size - 1
#     arr_1.each do |num|
#       arr_3 << (num * arr_2[index])
#     end
#     index += 1
#   end
#   arr_3.sort
# end

def multiply_all_pairs(arr_1, arr_2)
  products = [ ]
  arr_1.each do |num_1|
    arr_2.each do |num_2|
      products << num_1 * num_2
    end
  end
  products.sort
end

### PROGRAM AND EXAMPLES ###

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]