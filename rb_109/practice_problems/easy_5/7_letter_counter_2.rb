# prompt#
  # takes a string with one or more space separated words
  # returns a HASH that shows the number of words of different sizes
  # Do a loop style method that iterates over an array of the words and puts
    # keys as one thing and values as another
    # make it look to see if a key exists and if it does, add one to its value

  # Part II #
    # have the program exclude non-alphabetic characters


## Methods and Variables ##

require 'pry'

LETTERS = ('a'..'z').to_a + ('A'..'Z').to_a

def word_sizes(string)
  word_arr = string.split
  final_hash = Hash.new(0)
  word_arr.map do |word|
    striped_word = word.delete('^A-Za-z')
    final_hash[striped_word.size] += 1
  end
  final_hash 
end

def their_word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end

### Program ###

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}