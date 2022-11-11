# using map, increase each key by one

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

arr.map do |hash|
  new_hash = { }
  hash.each do |key, value|
    new_hash[key] = value += 1
  end
  new_hash
end  

# [{a: 2}, {b: 3, c: 4}, {d: 5, e: 6, f: 7}]