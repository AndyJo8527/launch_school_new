# this was my attempt
say_hello = true
b = 0

while say_hello
  puts 'Hello!'
  b += 1
  break if b > 4
end

#this was their answer
say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end