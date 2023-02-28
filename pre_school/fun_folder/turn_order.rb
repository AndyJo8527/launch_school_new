order = Hash.new

loop do
  p ">> What is the character's name?"
  name = gets.chomp.to_s
  
  case name
    when "exit"
      break
    else
      p ">> What was their initiative roll?"
      roll = gets.chomp.to_i
      order[name.to_sym] = roll
  end
end

p order.sort_by {|key, value| value}


