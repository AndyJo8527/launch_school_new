def attack(x)
 p rand(1..20) + x
end 

p ">> What is your attack modifier?"
attack(gets.chomp.to_i)
