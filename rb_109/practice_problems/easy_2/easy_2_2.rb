puts "What is the length of your room (in meters)?"
length = gets.chomp.to_f
puts "What is the width of your room (in meters)?"
width = gets.chomp.to_f
square_meters = length * width
square_feet = square_meters * 10.7639

puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)."


##### Requirements #####

# ask the user for a length and width of a room in meters
# displays the area of the room in both square meters and square feet
# 1 sq meter == 10.7639 sq feet
# don't worry about validating input


##### Examples #####

#Enter the length of the room in meters:
#10
#Enter the width of the room in meters:
#7
#The area of the room is 70.0 square meters (753.47 square feet).
