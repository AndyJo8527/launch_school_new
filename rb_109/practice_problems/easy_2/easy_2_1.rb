age = rand(20...200)

puts "What is your name?"
name = gets.chomp.to_s
if name == ""
   name = "Teddy"
end

puts "#{name} is #{age} years old!"
