daylight = [true, false].sample

def time_of_day(a)
  if a == true
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end


puts time_of_day(daylight)