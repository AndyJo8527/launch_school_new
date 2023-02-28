# new method that ONLY doubles consonants
  # do NOT double vowels, non-alphabetic characters, numbers
# return new string

  # PLAN ##
    # new blank string
    # iterate over string and scan for consonants
    # if its a consonant, double and add
    # if not, just add
# second method to check for consonant?

## METHODS AND VARIABLES ##

LETTERS = ('a'..'z').to_a + ('A'..'Z').to_a
VOWELS = ('aeiouAEIOU').split('').to_a
CONSONANTS = LETTERS - VOWELS

def double_consonants(string)
  re_string = ''
  string.chars.each do |char|
    if CONSONANTS.include?(char)
      2.times {re_string << char}
    else
      re_string << char
    end
  end
  re_string
end

### PROGRAM AND EXAMPLES ###

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
