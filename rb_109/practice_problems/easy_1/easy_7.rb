def prompt(string)
  print ">> Enter a " + string
end

def mad_libs
  prompt("noun: ")
  noun = gets.chomp.to_s
  prompt("verb: ")
  verb = gets.chomp.to_s
  prompt("adjective: ")
  adj = gets.chomp.to_s
  prompt("adverb: ")
  adv = gets.chomp.to_s
  puts "Do you #{verb} your #{adj} #{noun} #{adv}?"
end

mad_libs

=begin
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!
=end
