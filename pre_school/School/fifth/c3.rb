stoplight = ['green', 'yellow', 'red'].sample

case stoplight
  when 'green'
    puts "Go!"
  when 'yellow'
    puts "Slow down!"
  else
    puts "Stop!"
end


alert = if status == 'awake'
          'Be productive!'
        else
          'Go to sleep!'
        end

puts alert