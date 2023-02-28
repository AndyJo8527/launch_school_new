count = 1

loop do
    if count.odd? 
      puts "#{count} is odd!"
    else
      puts "#{count} is even!"
    end
  if count == 5 then break
  end
  count += 1
end

=begin this was the answer given
  raise 'A test exception.'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
else
  # other exception
ensure
  # always executed
endloop do
  if count.even?
    puts "#{count} is even!"
  else
    puts "#{count} is odd!"
  end

  break if count == 5
  count += 1
end
=end