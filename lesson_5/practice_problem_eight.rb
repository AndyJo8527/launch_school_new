#using the each method write code to output all of the vowels from the strings

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

VOWEL_ARRAY = %w(a e i o u)

hsh.each do |key, value|
  value.each do |word|
    new = word.chars
    new.select do |letters|
      if VOWEL_ARRAY.include?(letters)
        puts letters
      end
    end
  end
end


#other way
vowels = 'aeiou'

hsh.each do |_, value|
  value.each do |str|
    str.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end
