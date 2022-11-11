# don't use arr.to_h
# return a hash where the key is the first value and value is the second value

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hash = { }

arr.each do |sub_array|
  hash[sub_array[0]] = sub_array[1]
end

p hash

# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, 
#                         {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

