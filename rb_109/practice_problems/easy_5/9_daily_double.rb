# Prompt
  # method
  # takes a string argument
    # RETURNS a new string that contains
      # all consecutive duplicate characters collapsed into a single character
      # cannot use #squeeze or #squeeze!

## Methods and Variables ##

def crunch(string)
  array = string.split
  new_array = array.map do |word|
    b = word.split('')
    c = b.uniq
    d = c.join
  end
  new_string = new_array.join(' ')
end


### Programs ###

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''