stats = { }

skill_scores = { animal_handling: 1, insight: 1, medicine: 1, perception: 1, survival: 1 }

puts "What's your proficiency bonus?"

stats[:prof] = gets.chomp.to_i


 
puts "Do you want to do anything to your skills?"
prof = gets.chomp

case prof {|x, y|}
  when "add"
    p ">> For which skill are you adding to?"
    skill = gets.chomp.to_sym
    if skill == nul
      p "That's not a skill!"
    else
      skill_scores[skill.to_sym] = y + stats[:prof]
    end
  when "update"
    p ">> What skill are you updating?"
    skill = gets.chomp.to_sym
    if skill == nul
      p "That's not a skill!"
    else
      p ">> How much are you increasing it by?"
      increase = gets.chomp.to_i
      skill_scores[skill.to_sym] = y + increase
    end
  else
    p "Sorry, I didn't get that."
end
   

p skill_scores
p prof    



