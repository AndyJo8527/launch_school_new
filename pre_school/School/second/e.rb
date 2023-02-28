numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i

  numbers.push(input)
  break if numbers.size == 5
end
puts numbers

=begin
loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  
  if numbers.size < 5
    numbers << input
  else 
    break
  end
  
end

puts numbers
=end