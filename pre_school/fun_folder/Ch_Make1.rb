ch_info = { }
modifiers = { }
stats = { }
skill_scores = {acrobatics: "d", animal_handling: "w", arcana: "i",
  athletics: "s", deception: "c", history: "i", insight: "w", intimidation: "c", 
  investigation: "i", medicine: "w", nature: "i", perception: "w", 
  performance: "c", persuasion: "c", religion: "i", slight_of_hand: "d", 
  stealth: "d", survival: "w"}
  
def prompt(text)
  puts ">> #{text}"
end

prompt "What is your name?"
ch_info[:name] = gets.chomp.capitalize
name = ch_info[:name]

prompt "What is your race?"
ch_info[:race] = gets.chomp.capitalize

prompt "What is your class?"
ch_info[:plclass] = gets.chomp.downcase

prompt "Welcome #{name}, I have just a few more questions. What level is your character?"
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

prompt "Alright, your proficiency bonus is #{stats[:prof]}. Hang on to that until later!"

def whats_my_score(num)
  if num.between?(0,1)
    num = -5
  elsif num.between?(2, 3)
    num = -4
  elsif num.between?(4, 5)
    num = -3
  elsif num.between?(6, 7)
    num = -2
  elsif num.between?(8, 9)
    num = -1
  elsif num.between?(10, 11)
    num = 0
  elsif num.between?(12, 13)
    num = 1
  elsif num.between?(14, 15)
    num = 2
  elsif num.between?(16, 17)
    num = 3 
  elsif num.between?(18, 19)
    num = 4
  else
    num = 5
  end
end

prompt "What's your Strength ability score?"
modifiers[:strength] = whats_my_score(gets.chomp.to_i)
skill_scores[:athletics] = modifiers[:strength]
 
 
prompt "What is your Dexterity ability score?"
modifiers[:dexterity] = whats_my_score(gets.chomp.to_i)
skill_scores[:acrobatics] = modifiers[:dexterity]
skill_scores[:slight_of_hand] = modifiers[:dexterity]
skill_scores[:stealth] = modifiers[:dexterity]
 
 
prompt "What is your Constitution ability score?"
modifiers[:constitution] = whats_my_score(gets.chomp.to_i)
 
prompt "What is your Intelligence ability score?"
modifiers[:intelligence] = whats_my_score(gets.chomp.to_i)
skill_scores[:arcana] = modifiers[:intelligence]
skill_scores[:history] = modifiers[:intelligence]
skill_scores[:investigation] = modifiers[:intelligence]
skill_scores[:nature] = modifiers[:intelligence]
skill_scores[:religion] = modifiers[:intelligence]
 
 
prompt "What is your Wisdom ability score?"
modifiers[:wisdom] = whats_my_score(gets.chomp.to_i)
skill_scores[:animal_handling] = modifiers[:wisdom]
skill_scores[:insight] = modifiers[:wisdom]
skill_scores[:medicine] = modifiers[:wisdom]
skill_scores[:perception] = modifiers[:wisdom]
skill_scores[:survival] = modifiers[:wisdom]
 
 
prompt "What is your Charisma ability score?"
modifiers[:charisma] = whats_my_score(gets.chomp.to_i)
skill_scores[:deception] = modifiers[:charisma]
skill_scores[:intimidation] = modifiers[:charisma]
skill_scores[:performance] = modifiers[:charisma]
skill_scores[:persuasion] = modifiers[:charisma]

system('clear')
 

modifiers.each do |a, m|
  puts "#{a} modifier = #{m}"
  puts " "
end


skill_scores.each do |k, v|
  if v == "w"
    v = modifiers[:wisdom]
  elsif v == "c"
    v = modifiers[:charisma]
  elsif v == "i"
    v = modifiers[:intelligence]
  elsif v == "s"
    v = modifiers[:strength]
  elsif v == "d"
    v = modifiers[:dexterity]
  else
    v = v
  end
end
  

skill_scores.each do |k, v|
  puts "#{k} = #{v}"
end

puts ch_info
