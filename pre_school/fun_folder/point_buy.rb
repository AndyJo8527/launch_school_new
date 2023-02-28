points = 27

abilities = {strength: 8, dexterity: 8, intelligence: 8, constitution: 8, 
              wisdom: 8, charisma: 8}

def buy(x)
  
end

loop do
  p ">> What would you like to do? (add, exit)"
  answer = gets.chomp.to_s
  
  case answer
    when "add"
      p ">> Which ability did you want to increase?"
      ability = gets.chomp
      if ability.to_sym == nil
        p "that's not an ability"
      else
        p "How many did you want to increase it by?"
        amount = gets.chomp.to_i
        abilities[ability.to_sym] = 
    else
      break
  end
      
end