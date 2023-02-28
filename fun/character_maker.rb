require 'pry'
require 'yaml'
MESSAGES = YAML.load_file('character_maker_messages.yml')

ch_info = {}
modifiers = {}
stats = {}
saving_throws = {}
skill_scores = { strength: { athletics: 0 }, 
                dexterity: { acrobatics: 0, slight_of_hand: 0, stealth: 0 }, 
                intelligence: { arcana: 0, history: 0, investigation: 0, 
                nature: 0, religion: 0 }, 
                wisdom: { animal_handling: 0, insight: 0, medicine: 0, 
                perception: 0, survival: 0 },
                charisma: { deception: 0, intimidation: 0, performance: 0, 
                persuasion: 0 } }

############ Method Definitions ############

def prompt(text)
  puts ">> #{text}"
end

def prof_bonus(lvl)
  if lvl.between?(1, 4)
    prof_stat = 2
  elsif lvl.between?(5, 8)
    prof_stat = 3
  elsif lvl.between?(9, 12)
    prof_stat = 4
  elsif lvl.between?(13, 16)
    prof_stat = 5
  else
    prof_stat = 6
  end
  prof_stat
end

def find_modifier(ability_score)
  if ability_score.between?(0, 1)
    modifier = -5
  elsif ability_score.between?(2, 3)
    modifier = -4
  elsif ability_score.between?(4, 5)
    modifier = -3
  elsif ability_score.between?(6, 7)
    modifier = -2
  elsif ability_score.between?(8, 9)
    modifier = -1
  elsif ability_score.between?(10, 11)
    modifier = 0
  elsif ability_score.between?(12, 13)
    modifier = 1
  elsif ability_score.between?(14, 15)
    modifier = 2
  elsif ability_score.between?(16, 17)
    modifier = 3
  elsif ability_score.between?(18, 19)
    modifier = 4
  else
    modifier = 5
  end
  modifier
end

def score_adjust(s_hash, mod)
  s_hash.transform_values! do |num|
    num += mod
  end
end

def all_in_one(stat, skill_scores, modifiers, stats)
  modifiers[stat] = find_modifier(stats[stat])
  score_adjust(skill_scores[stat], modifiers[stat])
end

############ Begin Program ############

prompt('What is your name?')
ch_info[:name] = gets.chomp.capitalize
name = ch_info[:name]
=begin
prompt "What is your race?"
ch_info[:race] = gets.chomp.capitalize

prompt "What is your class?"
ch_info[:class] = gets.chomp.downcase
=end
prompt("Welcome #{name}, " + MESSAGES['ask_level'])
ch_info[:level] = gets.chomp.to_i
stats[:proficiency_bonus] = prof_bonus(ch_info[:level])

###### Ability Scores and Modifiers ######

prompt("Now let's get your ability scores and modifiers!")
prompt('What is your strength score?')
stats[:strength] = gets.chomp.to_i
all_in_one(:strength, skill_scores, modifiers, stats)

prompt('dexterity?')
stats[:dexterity] = gets.chomp.to_i
all_in_one(:dexterity, skill_scores, modifiers, stats)

prompt('constitution?')
stats[:constitution] = gets.chomp.to_i
modifiers[:constitution] = find_modifier(stats[:constitution])

prompt('intelligence?')
stats[:intelligence] = gets.chomp.to_i
all_in_one(:intelligence, skill_scores, modifiers, stats)

prompt('wisdom?')
stats[:wisdom] = gets.chomp.to_i
all_in_one(:wisdom, skill_scores, modifiers, stats)

prompt('charisma?')
stats[:charisma] = gets.chomp.to_i
all_in_one(:charisma, skill_scores, modifiers, stats)

###### Skill Proficiencies ######

=begin
saving_throws = add_proficiencies(modifiers)
add_proficiencies(skill_scores) 
=end

binding.pry
