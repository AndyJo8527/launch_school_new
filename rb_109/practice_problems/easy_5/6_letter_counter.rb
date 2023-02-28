# prompt#
  # takes a string with one or more space separated words
  # returns a HASH that shows the number of words of different sizes
  # Do a loop style method that iterates over an array of the words and puts
    # keys as one thing and values as another
    # make it look to see if a key exists and if it does, add one to its value


## Methods and Variables ##

require 'pry'

def word_sizes(string)
  # make sure if a key already exists to add it to the value (maybe another method?)
  word_arr = string.split
  final_hash = { }
  word_arr.map do |word|
    if final_hash.keys.include?(word.size)
      final_hash[word.size] += 1
    else
      final_hash[word.size] = 1
    end
    # binding.pry
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

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}