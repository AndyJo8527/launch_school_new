ability_array = [ ]

ability_hash = {strength: 0, dexterity: 0, intelligence: 0, constitution: 0, 
                wisdom: 0, charisma: 0}

6.times { ability_array << rand(1..6) }
ability_array.sort!
ability_array.delete_at(0)
num_new = ability_array[0] + ability_array[1] + ability_array[2]

p ">> What skill do you want to update? (str, dex, int, con, wis, cha)"

skill = gets.chomp.to_s

case skill 
  when "str"
    ability_hash[:strength] = num_new
  when "dex"
    ability_hash[:dexterity] = num_new
  when "int"
    ability_hash[:intelligence] = num_new
  when "con"
    ability_hash[:constitution] = num_new
  when "wis"
    ability_hash[:wisdom] = num_new
  when "cha"
    ability_hash[:charisma] = num_new
  when "exit"
    break
  else
    p "That's not a skill!"
end


p ability_array
p num_new
p ability_hash

