# return an array of only the hashes with all even numbers

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]


arr.select do |hash|
  hash.all? do |key, value|
    value.all? { |num| num.even? }
  end
end


# given code
arr.select do |hsh|
  hsh.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end
# => [{:e=>[8], :f=>[6, 10]}]