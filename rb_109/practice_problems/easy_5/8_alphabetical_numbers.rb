# Prompt
  # method
  # takes an array of integers
    # between 0 and 19
    # RETURNS array of sorted integers by:
      # alphabetical by english name of integer

## Methods and Variables ##

NUMBER_NAMES = %w(zero one two three four five six seven eight nine ten 
eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)


def alphabetic_number_sort(array)
  hash = NUMBER_NAMES.zip(array).to_h
  sorted_hash = hash.sort.to_h
  final_array = sorted_hash.values
end

### Program ###

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]