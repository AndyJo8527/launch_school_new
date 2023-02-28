movies = { Tremors: 5 }

puts "What would you like to do?"
choice = gets.chomp

case choice
  when "add"
    puts "What's the new movie?"
    title = gets.chomp
    puts "What did you rate it?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    if movies[title.to_sym] == nil
      puts "You've already rated that one!"
    end
  when "update"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "You haven't rated that one yet!"
    else
      puts "What is the new rating?"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    end
  when "display"
    movies.each do |m, r|
      puts "#{m}: #{r}"
    end
  when "delete"
    puts "What title do you want to remove?"
    title = gets.chomp
    if movies[title.to_sym] != nil
      movies.delete(title.to_sym)
    else
      puts "You haven't added that one yet!"
    end
  else
    puts "Error"
end

p movies