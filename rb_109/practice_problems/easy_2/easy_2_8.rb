# PROMPT #
# program
# ask the user to enter an integer greater than 0
# ask if the user wants to see sum or product of all numbers between 1 and that 
  # number

## EXAMPLES ##
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

### VARIABLES AND DEFINITIONS ###
def prompt(txt)
  puts ">> #{txt}"
end

def sum(num)
  sum_array = Array(1..num)
  final_sum = sum_array.sum
  puts "The sum of the integers between 1 and #{num} is #{final_sum}."
end

def product(num)
  product_array = Array(1..num)
  final_product = product_array.inject(:*)
  puts "The product of the integers between 1 and #{num} is #{final_product}."
end

#### PROGRAM ####

prompt("Please enter an integer greater than 0")
number = gets.chomp.to_i

prompt("Enter 's' to compute the sum, 'p' to compute the product")
operator = gets.chomp
if operator == 's'
  sum(number)
elsif operator == 'p'
  product(number)
end
