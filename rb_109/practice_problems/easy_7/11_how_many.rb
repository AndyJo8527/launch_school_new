# PROMPT #
  # method that takes an array
  # count up the occurence of each element in the array
  # return that count like so:
    # car => 4
    # truck => 3
    # SUV => 1
    # motorcycle => 2
    
  # PLAN:
    # go through each word and count how many times that word appears
    # make a hash and assign the word as a key and make the value the 
      # number of times the word is there
    
    

## METHODS AND VARIABLES ##
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(arr)
  hash = { }
  arr.each do |element|
    if hash.include?(element)
      hash[element] += 1
    else
      hash[element] = 1
    end
  end
  hash.each do |car, occurence|
    puts "#{car} => #{occurence}"
  end
end

def their_count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

### PROGRAM AND EXAMPLES ###

count_occurrences(vehicles)
