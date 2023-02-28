arr = [ ]
go = Proc.new {|x| x * rand(1..10)}

10.times {arr << rand(1..10)}

arr2 = arr.uniq

arr2.sort!

arr3 = [ ]

arr.each do |x|
  num = x * x
  arr3 << num
end

arr4 = arr3.uniq
arr5 = arr.collect(&go)
arr5.sort!

hash_arr = { }

hash_arr[:one] = arr
hash_arr[:two] = arr2
hash_arr[:three] = arr3
hash_arr[:four] = arr4
hash_arr[:five] = arr5

hash_arr.each do |x, y|
  puts "#{x}: #{y}"
end

