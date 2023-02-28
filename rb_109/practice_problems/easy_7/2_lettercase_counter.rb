# PROMPT #
  # write a METHOD that takes:
    # a string
  # RETURNS:
    # a hash with 3 entries
      # key = lowercase, uppercase, neither
      # values = how many letters fall into those keys
      
## METHODS AND VARIABLES ##

LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

require 'pry'

def letter_case_count(string)
  hash = {lowercase: 0, uppercase: 0, neither: 0}
    string.split('').each do |char|
      # binding.pry
      if LOWERCASE.include?(char)
        hash[:lowercase] += 1
      elsif UPPERCASE.include?(char)
        hash[:uppercase]  += 1
      else
        hash[:neither] += 1
      end
    end
  hash
end

### PROGRAM ###


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }