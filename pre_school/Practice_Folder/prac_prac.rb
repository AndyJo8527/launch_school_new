alert = Proc.new {|x| x * 56}


arr_one = [ ]

puts "Would you like to add a number?"
ans = gets.chomp

loop do
 if ans == "yes"
   puts "What number do you want to add?"
   num = gets.chomp.to_i
   arr_one << num
   puts "Would you like to add another?"
   ans = gets.chomp
 end
 p arr_one
 if ans == "no"
   puts "Good work!"
   break
 end
end

puts "Do you want to blow those up?"
resp = gets.chomp.to_s

if resp == "yes"
  puts "BOOM!"
  p arr_one.collect(&alert)
else
  puts "Fine then, hoser. Here's your puny numbers."
  p arr_one
end

