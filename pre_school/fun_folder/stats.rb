6.times do
  arr = [rand(1..6), rand(1..6), rand(1..6), rand(1..6)]
    arr.sort!
    arr.delete_at(0)
    score = (arr[0] + arr[1] + arr[2])

   p score
 end