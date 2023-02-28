# PROMPT
  # method that takes a string
  # return an array that has in each element:
    # the word (substring)
    # the size of the word appended to it (with a space before)

## Plan
  # method that takes a string
  # separate the string by words
  # count the length of each word
  # append the length to the end of the word
  # return an array of those together
### METHODS AND VARIABLES

require 'pry'

def word_lengths(string)
  words = string.split
  final = words.map do |word|
    word <<" #{word.size}"
  end
  final
end

#### EXAMPLES

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []