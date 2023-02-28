=begin
hash = {strength: 0, dexterity: 0, intelligence: 0, constitution: 0, 
        wisdom: 0, charisma: 0}
=end
        
ability_array = [ ]

p ">> Do you want some numbers?"
  if gets.chomp.to_s == "yes"
    4.times { ability_array << rand(1..6) }
    ability_array.sort!
    ability_array.delete_at(0)
    
    p ">> Which ability will you assign this number?"
    gets.chomp.to_sym = ability_array[0] + ability_array[1] + ability_array[2]
  end
  elsif gets.chomp.to_s == "no"
    p ">> Well, nevermind"
  else
    p ">> What?"
  end

=begin
def ability_roll(x)
  ability_array = [ ]
  ability_array.push(x.times rand(1..6))
  ability_array.sort.delete_at(0)
  p ability_array
end


p ">> Do you want to update and ability score?"
ability_hash = gets.chomp.to_str

case ability_hash
  when "yes"
    p ">> Which one?"
    title = gets.chomp
    if hash[title.to_sym].nil?
      puts "That's not a choice!"
    else
      puts "Let's get a score!"
      score = ability_roll(4)
      hash[title.to_sym] = score.to_i
    end
  else
    p ">> My bad"
end
  
=end

