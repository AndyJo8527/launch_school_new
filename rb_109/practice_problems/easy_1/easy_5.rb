# write a method that will take a short line of text and print it in a box

def top_bottom(num)
  print('+')
  num.times do
    print('-')
  end
  print('+')
end

def spaces(num)
  print('|')
  num.times do
    print(' ')
  end
  print('|')
end

def print_in_box(string)
  x = string.size
  puts top_bottom(x)
  puts spaces(x)
  puts "|#{string}|"
  puts spaces(x)
  puts top_bottom(x)
end

print_in_box('I like turtles')