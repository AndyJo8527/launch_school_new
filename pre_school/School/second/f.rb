names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop
break if names == [ ]
end



loop do
  puts names.shift
  break if names.empty?
end