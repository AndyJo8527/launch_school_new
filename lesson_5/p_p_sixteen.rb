# 8-4-4-4-12 is the order of the UUID

require 'securerandom'

a = SecureRandom.hex(4)
b = SecureRandom.hex(2)
c = SecureRandom.hex(2)
d = SecureRandom.hex(2)
e = SecureRandom.hex(6)

puts "#{a}-#{b}-#{c}-#{d}-#{e}"
