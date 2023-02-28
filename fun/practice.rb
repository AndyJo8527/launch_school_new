require 'pry'
skill_scores = { strength: { athletics: 0 }, 
                dexterity: { acrobatics: 0, slight_of_hand: 0, stealth: 0 }, 
                intelligence: { arcana: 0, history: 0, investigation: 0, 
                nature: 0, religion: 0 }, 
                wisdom: { animal_handling: 0, insight: 0, medicine: 0, 
                perception: 0, survival: 0 },
                charisma: { deception: 0, intimidation: 0, performance: 0, 
                persuasion: 0 } }
                
modifiers = {strength: 4, dexterity: 2, intelligence: 1, constitution: -3, wisdom: -1, charisma: 1}

proficiency = 4

skill_scores.map do |key, value|
  value.transform_values! do |num|
    num += 4
  end
end

def add_proficiencies(hash, prof)
  hash.transform_values! do |value|
    value += prof
  end
end

def add_proficiencies_two(hash, prof)
  loop do
    puts "What skill do you have proficiency in?"
    skill_with_prof = gets.chomp.to_sym
    hash.map do |k, v|
      binding.pry
      if v.has_key?(skill_with_prof) 
        v.transform_values! do |value|
          value += prof
          end
      elsif skill_with_prof == 'no'
        break
      else
        puts "please type an existing skill"
        next
      end
      break
    end
  end
end


add_proficiencies_two(skill_scores, proficiency)
