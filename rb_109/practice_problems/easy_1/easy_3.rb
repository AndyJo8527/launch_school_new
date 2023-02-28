def stringy(number)
  index = 1
  string = ''
  loop do
    break if index == (number + 1)
    if index.odd?
      string << '1'
    else
      string << '0'
    end
    index += 1
  end
  string
end



puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
# method that takes an integer as an argument and returns a string of alternating
# 1s and 0s adding up to that amount and it has to start with 1