# combo of methods
# select or reject
# new array identical in structure
# only containing integers that are multiples of 3

arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

arr.map do |sub_array|
  sub_array.reject do |num|
    num % 3 != 0
  end
end