a1 = [1, 2, 3, 4, 5]

p a1.collect { |num| num * 6}

magic = Proc.new {|num| num * 50}

p a1.collect!(&magic)
