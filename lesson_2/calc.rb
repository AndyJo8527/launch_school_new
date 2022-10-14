puts "Welcome to the Calculator!"
puts ">> I need two numbers, what's the first number?"
num1 = gets.chomp
puts ">> What's the second number?"
num2 = gets.chomp

puts ">> What opperation will you use?"
operation = gets.chomp.to_s

case operation
  when "add"
    puts num1.to_i + num2.to_i
  when "subtract"
    puts num1.to_i - num2.to_i
  when "multiply"
    puts num1.to_i * num2.to_i
  when "divide"
    puts num1.to_f / num2.to_f
  else
    puts "That's not a valid operation"
end