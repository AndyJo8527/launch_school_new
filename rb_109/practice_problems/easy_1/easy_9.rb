def center_of(string)
  size = string.length
  length = size/2
  if size.odd?
    string[length]
  else
    string[length - 1, 2]
  end
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'

#odd is one character, even is two
