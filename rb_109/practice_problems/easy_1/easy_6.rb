#def what_to_print
  

def triangle(num)
  index = 1
  loop do 
    break if index == (num + 1)
    (num - index).times {print ' '} + (index).times {print '*'} 
    puts ''
    index += 1
  end
end  



triangle(9)

#        *
#       **
#      ***
#     ****
#    *****
#   ******
#  *******
# ********
#*********