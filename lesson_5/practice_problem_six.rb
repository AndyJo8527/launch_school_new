# (Name) is a (age)-year-old (m/f).

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

counter = 0

#original way
munsters.each do |name, demos|
  name = munsters.keys
  demos = munsters.values
  puts "#{name[counter]} is a #{demos[counter]["age"]}-year-old #{demos[counter]["gender"]}."
  counter += 1
end

#my refractored way
munsters.each do |name, demos|
  puts "#{name} is a #{demos['age']}-year-old #{demos['gender']}."
end

#presented way
munsters.each_pair do |name, details|
  puts "#{name} is a #{details['age']}-year-old #{details['gender']}"
end

