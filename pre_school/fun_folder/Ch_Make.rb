ch_info = { }
stats = { }
modifiers = { }
ability_scores = { }
skills = { }
strength_skills = {athletics: 0 }
dexterity_skills = { acrobatics: 0, slight_of_hand: 0, stealth: 0 }
intelligence_skills = { arcana: 0, history: 0, investigation: 0, nature: 0, religion: 0 }
wisdom_skills = { animal_handling: 0, insight: 0, medicine: 0, perception: 0, survival: 0 }
charisma_skills = { deception: 0, intimidation: 0, performance: 0, persuasion: 0 }


p "What is your name?"
ch_info[:name] = gets.chomp.capitalize
name = ch_info[:name]

p "What is your race?"
ch_info[:race] = gets.chomp.capitalize

p "What is your class?"
ch_info[:plclass] = gets.chomp.downcase

p "Welcome #{name}, I have just a few more questions."

p "What is your background?"
ch_info[:background] = gets.chomp.downcase

p "What is your alignment?"
ch_info[:alignment] = gets.chomp.downcase


p "Alright, #{name}, let's get some more info! What level is your character?"
stats[:lvl] = gets.chomp.to_i

if stats[:lvl].between?(1, 4)
  stats[:prof] = 2
elsif stats[:lvl].between?(5, 8)
  stats[:prof] = 3
elsif stats[:lvl].between?(9, 12)
  stats[:prof] = 4
elsif stats[:lvl].between?(13, 16)
  stats[:prof] = 5 
else 
  stats[:prof] = 6
end

system('clear')


p "Alright, your proficiency bonus is #{stats[:prof]}. Hang on to that number for later! Now, what is your strength ability score?"
ability_scores[:str] = gets.chomp.to_i


if ability_scores[:str].between?(0, 1) 
  modifiers[:str_mod] = -5
elsif ability_scores[:str].between?(2, 3)
  modifiers[:str_mod] = -4
elsif ability_scores[:str].between?(4, 5)
  modifiers[:str_mod] = -3
elsif ability_scores[:str].between?(6, 7)
  modifiers[:str_mod] = -2
elsif ability_scores[:str].between?(8, 9)
  modifiers[:str_mod] = -1
elsif ability_scores[:str].between?(10, 11)
  modifiers[:str_mod] = 0
elsif ability_scores[:str].between?(12, 13)
  modifiers[:str_mod] = 1
elsif ability_scores[:str].between?(14, 15)
  modifiers[:str_mod] = 2
elsif ability_scores[:str].between?(16, 17)
  modifiers[:str_mod] = 3
elsif ability_scores[:str].between?(18, 19)
  modifiers[:str_mod] = 4
else 
  modifiers[:str_mod] = 5
end


p "Your Strength Modifier is #{modifiers[:str_mod]}"


strength_skills.each do |k, v|
  v = modifiers[:str_mod]
  puts "#{k} = #{v}"
end

strength_skills.merge(skills)
sleep(4)
system('clear')

p "What is your dexterity ability score?"
ability_scores[:dex] = gets.chomp.to_i

if ability_scores[:dex].between?(0, 1) 
  modifiers[:dex_mod] = -5
elsif ability_scores[:dex].between?(2, 3)
  modifiers[:dex_mod] = -4
elsif ability_scores[:dex].between?(4, 5)
  modifiers[:dex_mod] = -3
elsif ability_scores[:dex].between?(6, 7)
  modifiers[:dex_mod] = -2
elsif ability_scores[:dex].between?(8, 9)
  modifiers[:dex_mod] = -1
elsif ability_scores[:dex].between?(10, 11)
  modifiers[:dex_mod] = 0
elsif ability_scores[:dex].between?(12, 13)
  modifiers[:dex_mod] = 1
elsif ability_scores[:dex].between?(14, 15)
  modifiers[:dex_mod] = 2
elsif ability_scores[:dex].between?(16, 17)
  modifiers[:dex_mod] = 3
elsif ability_scores[:dex].between?(18, 19)
  modifiers[:dex_mod] = 4
else 
  modifiers[:dex_mod] = 5
end


p "Your Dexterity Modifier is #{modifiers[:dex_mod]}"

dexterity_skills.each do |k, v|
  v = modifiers[:dex_mod]
  puts "#{k} = #{v}"
end

dexterity_skills.merge(skills)
sleep(4)
system('clear')


p "What is your constitution ability score?"
ability_scores[:con] = gets.chomp.to_i

if ability_scores[:con].between?(0, 1) 
  modifiers[:con_mod] = -5
elsif ability_scores[:con].between?(2, 3)
  modifiers[:con_mod] = -4
elsif ability_scores[:con].between?(4, 5)
  modifiers[:con_mod] = -3
elsif ability_scores[:con].between?(6, 7)
  modifiers[:con_mod] = -2
elsif ability_scores[:con].between?(8, 9)
  modifiers[:con_mod] = -1
elsif ability_scores[:con].between?(10, 11)
  modifiers[:con_mod] = 0
elsif ability_scores[:con].between?(12, 13)
  modifiers[:con_mod] = 1
elsif ability_scores[:con].between?(14, 15)
  modifiers[:con_mod] = 2
elsif ability_scores[:con].between?(16, 17)
  modifiers[:con_mod] = 3
elsif ability_scores[:con].between?(18, 19)
  modifiers[:con_mod] = 4
else 
  modifiers[:con_mod] = 5
end


p "Your Constitution Modifier is #{modifiers[:con_mod]}"


sleep(4)
system('clear')


p "What is your intelligence ability score?"
ability_scores[:int] = gets.chomp.to_i

if ability_scores[:int].between?(0, 1) 
  modifiers[:int_mod] = -5
elsif ability_scores[:int].between?(2, 3)
  modifiers[:int_mod] = -4
elsif ability_scores[:int].between?(4, 5)
  modifiers[:int_mod] = -3
elsif ability_scores[:int].between?(6, 7)
  modifiers[:int_mod] = -2
elsif ability_scores[:int].between?(8, 9)
  modifiers[:int_mod] = -1
elsif ability_scores[:int].between?(10, 11)
  modifiers[:int_mod] = 0
elsif ability_scores[:int].between?(12, 13)
  modifiers[:int_mod] = 1
elsif ability_scores[:int].between?(14, 15)
  modifiers[:int_mod] = 2
elsif ability_scores[:int].between?(16, 17)
  modifiers[:int_mod] = 3
elsif ability_scores[:int].between?(18, 19)
  modifiers[:int_mod] = 4
else 
  modifiers[:int_mod] = 5
end


p "Your Intelligence Modifier is #{modifiers[:int_mod]}"

intelligence_skills.each do |k, v|
  v = modifiers[:int_mod]
  puts "#{k} = #{v}"
end


sleep(4)
system('clear')


p "What is your wisdom ability score?"
ability_scores[:wis] = gets.chomp.to_i

if ability_scores[:wis].between?(0, 1) 
  modifiers[:wis_mod] = -5
elsif ability_scores[:wis].between?(2, 3)
  modifiers[:wis_mod] = -4
elsif ability_scores[:wis].between?(4, 5)
  modifiers[:wis_mod] = -3
elsif ability_scores[:wis].between?(6, 7)
  modifiers[:wis_mod] = -2
elsif ability_scores[:wis].between?(8, 9)
  modifiers[:wis_mod] = -1
elsif ability_scores[:wis].between?(10, 11)
  modifiers[:wis_mod] = 0
elsif ability_scores[:wis].between?(12, 13)
  modifiers[:wis_mod] = 1
elsif ability_scores[:wis].between?(14, 15)
  modifiers[:wis_mod] = 2
elsif ability_scores[:wis].between?(16, 17)
  modifiers[:wis_mod] = 3
elsif ability_scores[:wis].between?(18, 19)
  modifiers[:wis_mod] = 4
else 
  modifiers[:wis_mod] = 5
end


p "Your Wisdom Modifier is #{modifiers[:wis_mod]}"


wisdom_skills.each do |k, v|
  v = modifiers[:wis_mod]
  puts "#{k} = #{v}"
end


sleep(4)
system('clear')


p "What is your charisma ability score?"
ability_scores[:cha] = gets.chomp.to_i

if ability_scores[:cha].between?(0, 1) 
  modifiers[:cha_mod] = -5
elsif ability_scores[:cha].between?(2, 3)
  modifiers[:cha_mod] = -4
elsif ability_scores[:cha].between?(4, 5)
  modifiers[:cha_mod] = -3
elsif ability_scores[:cha].between?(6, 7)
  modifiers[:cha_mod] = -2
elsif ability_scores[:cha].between?(8, 9)
  modifiers[:cha_mod] = -1
elsif ability_scores[:cha].between?(10, 11)
  modifiers[:cha_mod] = 0
elsif ability_scores[:cha].between?(12, 13)
  modifiers[:cha_mod] = 1
elsif ability_scores[:cha].between?(14, 15)
  modifiers[:cha_mod] = 2
elsif ability_scores[:cha].between?(16, 17)
  modifiers[:cha_mod] = 3
elsif ability_scores[:cha].between?(18, 19)
  modifiers[:cha_mod] = 4
else 
  modifiers[:cha_mod] = 5
end


p "Your Charisma Modifier is #{modifiers[:cha_mod]}"


charisma_skills.each do |k, v|
  v = modifiers[:cha_mod]
  puts "#{k} = #{v}"
end


sleep(4)
system('clear')


p "Now add your proficiency bonus to all skills that you have proficiency in."


p "Here is a list of your modifiers:"
modifiers.each do |k, v|
  puts "#{k} = #{v}"
end

sleep(10)

p ch_info