# return an array with the COLORS of the fruits and SIZES of Vegetables
# sizes are uppercase
# colors are capitalized

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

arr = [ ]

hsh.map do |key, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end


hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end
# => [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]




# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]