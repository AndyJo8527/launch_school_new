iteration = 1
arr = %w(1 2 3 4 5 6 7 8 9 10)



p ">> How many times should I write your name?"
amount = gets.chomp.to_i
p ">> What is your name?"
name = gets.chomp.to_s

system("clear")

puts "Here is your name #{amount} times!"
puts " "

=begin
loop do
  iteration +=1
  puts "Your name is #{name.to_s}!"
  break if iteration > amount
end
=end

loop do
  puts arr[iteration]
  iteration += 1
  break if iteration > amount
end
